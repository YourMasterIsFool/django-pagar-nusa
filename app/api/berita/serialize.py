from rest_framework import serializers
from berita.models import Berita
from django.contrib.auth.models import User

class UserSerialize(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username')

class AddNewsSerialize(serializers.ModelSerializer):
    title = serializers.CharField(required=False, allow_null=True)
    class Meta:
        model = Berita
        fields = ['title', 'thumbnail', 'body']

    def validate_title(self, value):
        if not value:
            raise serializers.ValidationError("Title field is required.!")
        return value


class NewsSerialize(serializers.ModelSerializer):
    penulis = UserSerialize(many=False)
    class Meta:
        model = Berita
        fields = ('title', 'thumbnail', 'body', 'penulis', 'slug', 'created_at')


