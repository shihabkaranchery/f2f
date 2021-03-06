from django.shortcuts import render, redirect
from django.http import HttpResponse
from home.models import Recipe, MixingAgent, Base, Ingredient, FacePack, CustomFacePack
from cart.models import Cart
from userregistration.views import init_user_login
from django.contrib.auth.models import User
from home.views import cart_size, get_valid_user_data
from payments.models import *
from userregistration.models import *
from decimal import *
import pdb
import datetime
import json
import random
import stripe
import re
import farms2face.settings as settings
from django.core.mail import EmailMultiAlternatives
from django.template.loader import render_to_string
from home.templatetags.common_tags import facepack_display_abs


# Create your views here.

def thanks(request):
    data = {
        'cart_size' : cart_size(request),
        'valid_user': get_valid_user_data(request)
    }
    return render(request, "thanks.html", data)

def checkout(request):
    json_response = { 'success': False }
    if request.method == 'POST':
        try:
            init_user_login(request)
            user = request.user
            data = json.loads(request.POST['data'])
            shipping_id = data['shipping_id']
            token_id = data['token_id']
            #token_id = "tok_visa"
            shipping = Shipping.objects.get(pk=shipping_id)
            # Check for valid payment option
            if hasattr(user, 'cart_set') and shipping:
                total = Decimal('0.00');
                subtotal = Decimal('0.00');
                for c in user.cart_set.all():
                    subtotal += c.item.price*c.quantity     
                promo_discount = sum([p.discount for p in Promo.objects.filter(active=True)])
                total = subtotal + shipping.cost - promo_discount
                # 1. make payment
                # Stripe charge code
                ch = None
                payment_type = None
                stripe.api_key = settings.STRIPE_API_KEY
                if hasattr(user, 'paymenttype_set') and user.paymenttype_set.count() > 0:
                    # Stripe customer already registered.
                    customer_id = user.paymenttype_set.last().stripe.customer_id
                    ch = stripe.Charge.create(
                        amount=int(total*100),
                        currency="usd",
                        description="Charge for "+user.email,
                        receipt_email=user.email,
                        customer=customer_id,
                    )
                    payment_type = user.paymenttype_set.last().stripe
                    exp_date = datetime.datetime.strptime(str(ch.source.exp_year)+\
                                "-"+str(ch.source.exp_month), '%Y-%m')
                    if ch.source.last4 != payment_type.number or exp_date != payment_type.expiry or data.get('b_zip', "") != payment_type.zipcode or data.get('b_state', "") != payment_type.state or data.get('b_city', "") != payment_type.city or data.get('b_name', "") != payment_type.owner_name or ch.source.brand != payment_type.type or data.get('b_addr1', "") != payment_type.street:
    
                        # Add a local stripe payment type object
                        s = Stripe() 
                        s.customer_id = customer_id
                        s.user = user
                        s.street = data.get('b_addr1', "")
                        s.city = data.get('b_city', "")
                        s.state = data.get('b_state', "")
                        s.country = data.get('b_country', "")
                        s.zipcode = data.get('b_zip', "")
                        s.primary = True
                        s.type = ch.source.brand
                        s.created = ch.created
                        s.owner_name = data.get('b_name', "")
                        s.number = ch.source.last4
                        s.expiry = exp_date
                        # wtf?? user.paymenttype_set.all().delete()
                        s.save()
                        payment_type = s
                else:
                    # Create Stripe customer object
                    cu = stripe.Customer.create(
                        description="Customer "+user.email,
                        email=user.email,
                        source = token_id
                    ) 
                    customer_id = cu.id
                    # New Stripe account, create charge
                    ch = stripe.Charge.create(
                        amount=int(total*100),
                        currency="usd",
                        description="Charge for "+user.email,
                        receipt_email=user.email,
                        customer=customer_id
                    )

                    exp_date = datetime.datetime.strptime(str(ch.source.exp_year)+\
                                "-"+str(ch.source.exp_month), '%Y-%m')
    
                    # Add a local stripe payment type object
                    s = Stripe() 
                    s.customer_id = cu.id
                    s.user = user
                    s.street = data.get('b_addr1', "")
                    s.city = data.get('b_city', "")
                    s.state = data.get('b_state', "")
                    s.country = data.get('b_country', "")
                    s.zipcode = data.get('b_zip', "")
                    s.primary = True
                    s.type = ch.source.brand
                    s.created = ch.created
                    s.owner_name = data.get('b_name', "")
                    s.number = ch.source.last4
                    s.expiry = exp_date
                    # wtf?? user.paymenttype_set.all().delete()
                    s.save()
                    payment_type = s
                    
                # Don't forget, good idea to instantiate user first/last name from stripe
                # form for cases where user created a new login and forgot to add details
                # This is a better approach than creating a default generic user profile
                # during user signup (aka 'New User' if you know what I mean)

                names = data.get('b_name', "").split()
                first, last = " ".join(names[0:-1]), names[-1]

                if not hasattr(user, 'profile'):
                    up = Profile()
                    up.user = user
                    up.save()
                user.first_name = user.first_name or first
                user.last_name = user.last_name or last
                user.save()

                # make a local ShippingAddress object
                sh = ShippingAddress()
                sh.profile = user.profile
                sh.first_name = first
                sh.last_name = last
                sh.street1 = data.get('s_addr1', "") 
                sh.city = data.get('s_city', "") 
                sh.state = data.get('s_state', "") 
                sh.country = data.get('s_country', "") 
                sh.zipcode = data.get('s_zip', "") 
                ShippingAddress.objects.filter(profile=user.profile).delete()
                sh.primary = True
                sh.save()

                # Make local payment object based on above charge
                payment = Payment()
                payment.user = user
                payment.type = payment_type
                payment.total = total
                payment.save()
                # 2. record purchase history, while (re)moving entry from cart
                for c in user.cart_set.all():
                    ph = PurchaseHistory()
                    ph.user = user
                    ph.payment = payment
                    ph.item = c.item
                    ph.shipping = shipping
                    ph.type = c.type
                    ph.subtype = c.subtype
                    ph.quantity = c.quantity
                    ph.save()
                    c.delete()
                to_email = ph.user.email
                from_email = 'no-reply@farms2face.com'
                text_content = "Order Received"
                html_content = "<h2>Order Summary:</h2>"
                ind = 1
                url = request.get_raw_uri().replace(request.get_full_path(),'')
                url = "https://www.farms2face.com"
                for ph in payment.purchasehistory_set.all():
                    html_content += "<hr>"+render_to_string('facepack_mail.html', facepack_display_abs(url, ph.item.id))
                    html_content += "<p>Type: <b>%s</b></p>" % "A-LA-CARTE" if ph.type == "buy" else "NEVER RUN OUT"
                    html_content += "<p>Qty: <b>%d</b></p>" % ph.quantity
                    html_content += "<p>Price: <b>$%0.2f</b></p>" % ph.item.price
                    html_content += "<a href='%s/admin/payments/purchasehistory/%d'>Admin link</a>" % (url, ph.id)
                    ind += 1
                html_content += "<hr><p>Order Total: <b>$%0.2f</b></p>" % payment.total
                sh = None
                if ShippingAddress.objects.filter(profile=ph.user.profile, primary=True).count() == 1:
                    sh = ShippingAddress.objects.get(profile=ph.user.profile, primary=True)
                html_content += "<hr><h3>Shipping:</h3>"
                html_content += "<p>%s %s<br>" % (sh.first_name, sh.last_name)
                html_content += "%s<br>" % sh.street1
                html_content += "%s<br>" % sh.city
                html_content += "%s<br>" % sh.state
                html_content += "%s<br></p>" % sh.zipcode
                html_content += "<hr><h3>Ordered by: %s</h3>" % user.email
                html_content += "<hr><h3>You will receive an update with tracking info in the next few days</h3>"
                html_content_admin = html_content
                html_content = re.sub('<a.*a>','', html_content)
                msg = EmailMultiAlternatives('Order Confirmation #%d - Farms2Face' % ph.id, text_content, from_email, [to_email])
                msg.attach_alternative(html_content, "text/html")
                msg.send()
               
                # Send email to admin with links 
                msg = EmailMultiAlternatives('Admin - Order Confirmation #%d - Farms2Face' % ph.id, text_content, from_email, 
                      [i['email'] for i in User.objects.filter(is_superuser=True).values('email')])
                msg.attach_alternative(html_content_admin, "text/html")
                msg.send()
                json_response['success'] = True
        except Exception as e:
                json_response['error'] = str(e)
                print(str(e))
                print(json.loads(request.POST['data']))
    return HttpResponse(json.dumps(json_response, ensure_ascii=False))


def view_cart(request):
    data = {}
    #init_user_login(request)
    cart_items = []
    shipping_id = int(request.GET.get('shipping')) if request.GET.get('shipping') else 4
    shipping = Shipping.objects.get(pk=shipping_id)
    subtotal = Decimal('0.00');
    total = Decimal('0.00');
    user = request.user
    if cart_size(request) > 0:
        for c in user.cart_set.all():
            mandatory = []
            optional = None
            for cfp in CustomFacePack.objects.filter(facepack=c.item):
                mandatory.append({
                    'name'   : cfp.recipe.mandatory_ingredient.name,
                    'id'     : cfp.recipe.mandatory_ingredient.id,
                    'r_id'   : cfp.recipe.id,
                    'image'  : cfp.recipe.mandatory_ingredient.image,  
                })
                optional = cfp.optional_ingredient
            fp = FacePack.objects.get(pk=c.item_id)
            cart_items.append({
                'id'           : c.id,
                'type'         : c.type,
                'subtype'      : c.subtype,
                'item_id'      : c.item_id,
                'name'         : fp.name,
                'mandatory'    : mandatory,
                'base'         : fp.base.name,
                'mixing_agent' : fp.mixing_agent.name,
                'optional'     : { 
                                   'name'  : optional.name,
                                   'image' : optional.image,
                                 } if optional else "" ,
                'quantity'     : c.quantity,
                'price'        : '$'+str(c.item.price*c.quantity) if c.type == "buy" else '$'+str(c.item.price)
            })
            subtotal += c.item.price*c.quantity
    promo_discount = sum([p.discount for p in Promo.objects.filter(active=True)])
    data = {
        'cart_size' : cart_size(request),
        'cart_items': cart_items,
        'shipping_items'  : [{ 'type': s.type,
                               'id': s.id } for s in Shipping.objects.all()],
        'shipping_id'     : shipping.id,
        'shipping_cost'   : '$'+str(shipping.cost),
        'shipping_helper' : shipping.helper,
        'subtotal'        : '$'+str(subtotal),
        'total'           : '$'+str(subtotal+shipping.cost-promo_discount) ,
        'total_cents'     : (subtotal+shipping.cost-promo_discount)*100,
        'valid_user'      : get_valid_user_data(request),
        'is_anonymous'    : user.username.startswith("anon_"),
        'promo'           : Promo.objects.filter(active=True),
    }
    return render(request, "cart.html", data)


def update_quantity(request):
    json_response = { 'success': False }
    if request.method == 'POST':
        init_user_login(request)
        user = request.user
        data = json.loads(request.POST['data'])
        cart_id = int(data['cart_id'])
        val = data['operation']
        c = Cart.objects.get(pk=cart_id)
        if c.type == "buy":
            if val == "up":
                c.quantity += 1
            if val == "down":
                c.quantity -= 1
            c.item.price = c.item.price_single
        elif c.type == "subscribe":
            if val == "regular":
                c.subtype = "regular"
                c.item.price = c.item.price_regular
                c.item.save()
            elif val == "intense":
                c.subtype = "intense"
                c.item.price = c.item.price_intense
                c.item.save()
        c.save()
        json_response['success'] = True
    return HttpResponse(json.dumps(json_response, ensure_ascii=False))

def update_type(request):
    json_response = { 'success': False }
    if request.method == 'POST':
        init_user_login(request)
        user = request.user
        data = json.loads(request.POST['data'])
        cart_id = int(data['cart_id'])
        c = Cart.objects.get(pk=cart_id)
        c.type = data.get('type', c.type)
        if c.type == 'buy':
            c.subtype = None
            c.item.price = c.item.price_single
            c.item.save()
            c.quantity=1
        if c.type == 'subscribe':
            #c.quantity=4
            c.subtype="regular"
            c.item.price = c.item.price_regular
            c.item.save()
        c.save()
        json_response['success'] = True
    return HttpResponse(json.dumps(json_response, ensure_ascii=False))
