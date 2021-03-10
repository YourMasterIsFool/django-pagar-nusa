from rest_framework.authtoken.views import ObtainAuthToken
from api.auth.serialize import LoginSerialize, RegisterSerialize
from django.contrib.auth import authenticate
from django.contrib.auth.models import User
from django.utils.http import urlsafe_base64_decode, urlsafe_base64_encode
from rest_framework.authtoken.models import Token
from rest_framework.response import Response
from rest_framework import generics
from rest_framework.status import HTTP_200_OK, HTTP_400_BAD_REQUEST
from api.auth.serialize import ListUserSerializer


class ListUserApiView(generics.ListAPIView):
    serializer_class = ListUserSerializer
    queryset = User.objects.all()

class RegisterApiView(generics.CreateAPIView):
    serializer_class = RegisterSerialize
    queryset = User.objects.all()

    def post(self, request, *args, **kwargs):
        serialize = RegisterSerialize(data=request.data)
        if serialize.is_valid(raise_exception=True):
            username = request.data.get('username')
            password = request.data.get('password')
            email = request.data.get('email')
            user = User.objects.create_user(username=username, password=password, email=email)
            auth = authenticate(username=username, password=password)
            token, create = Token.objects.get_or_create(user=user)
            return Response({
                'token': token.key,
                'user':{
                    'id': user.pk,
                    'email': user.email,
                    'username':user.username,
                }
            }, status=HTTP_200_OK)
        return Response(serializer.errors, status=HTTP_400_BAD_REQUEST)


class LoginApiView(ObtainAuthToken):
    serializer_class = LoginSerialize
    def post(self, request, *args, **kwargs):
        # serializer = self.serializer_class(data=request.data,
        #                                    context={'request': request})
        serializer = LoginSerialize(data=request.data)
        if serializer.is_valid(raise_exception=True):    
            username = request.data['username']
            password = request.data['password']
            user = authenticate(username=username, password=password)
            if user:
                token, created = Token.objects.get_or_create(user=user)
                return Response({
                    'key': token.key,
                    'user':{
                        'id': user.pk,
                        'email': user.email,
                        'username':user.username,
                    }
                }, status=HTTP_200_OK)
            return Response({
                "non_field_errors":{
                    "Unable to log in with provided credentials."
                }
            },status=HTTP_400_BAD_REQUEST)
        else:
            return Response(serializer.errors, status=HTTP_400_BAD_REQUEST)