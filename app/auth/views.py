from django.shortcuts import render, redirect
from django.contrib.auth import authenticate
from django.contrib.auth.models import User
from django.contrib.auth import login as auth_login
from django.http import HttpResponse, HttpResponseRedirect 
from django.contrib.auth import logout as user_logout

# Create your views here.
def login_page(request):
    if request.user.is_authenticated:
        return HttpResponseRedirect('/')
    else:
        if request.method == 'POST':
            username = request.POST['username']
            password = request.POST['password']
            user = authenticate(username=username, password=password)
            if user is not None:
                if user.is_active:
                    auth_login(request, user)
                    if 'next' in request.GET:
                        if request.user.is_superuser == True:
                            return HttpResponseRedirect('/admin')
                        else:
                            return redirect(request.META.get('HTTP_REFERER', '/'))
                    else:
                        if request.user.is_superuser == True :
                            return HttpResponseRedirect('/admin')
                        else:
                            return redirect(request.META.get('HTTP_REFERER', '/'))
            
    return render(request,'users/auth/login.html')


def logout(request):
    user_logout(request)
    return HttpResponseRedirect('/')
    

    
    