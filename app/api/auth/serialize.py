from django.contrib.auth.models import User
from rest_framework import serializers
from rest_framework.authtoken.models import Token
from django.conf import settings

# Register Serialize
class RegisterSerialize(serializers.Serializer):
    username = serializers.CharField(required=False, allow_blank=True)
    password = serializers.CharField(style={'input_type': 'password'}, required=False, allow_blank=True)
    email = serializers.CharField(required=False, allow_blank=True)

    def validate_password(self, value):    
        if not value:
            raise serializers.ValidationError('Password field is required..!')

        if len(value) < getattr(settings, 'PASSWORD_MIN_LENGTH', 8):
            raise serializers.ValidationError(
                "Password should be atleast %s characters long." % getattr(settings, 'PASSWORD_MIN_LENGTH', 8)
            )
        return value

    def validate_email(self, value):
        if not value:
            raise serializers.ValidationError('Email field is required..!')
        if User.objects.filter(email=value).exists():
            raise serializers.ValidationError("Email already exists.!")
        return value

    
    def validate_username(self, value):
        if not value:
            raise serializers.ValidationError('Username field is required..!')
        if User.objects.filter(username=value).exists():
            raise serializers.ValidationError("Username already exists.!")
        return value


# Login Token Authentification
class LoginSerialize(serializers.Serializer):
    username = serializers.CharField(required=False, allow_blank=True)
    password = serializers.CharField(style={'input_type': 'password'}, required=False, allow_blank=True)
    
    def validate_username(self, value):
        if not value:
            raise serializers.ValidationError('Username field is required..!')
        return value
    
    def validate_password(self, value):
        if not value:
            raise serializers.ValidationError('Password field is required.!')
        return value



class ListUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('username', 'email')


class TokenSerialize(serializers.ModelSerializer):
    user = ListUserSerializer(many=False)
    class Meta:
        model = Token
        fields = ('key', 'user')