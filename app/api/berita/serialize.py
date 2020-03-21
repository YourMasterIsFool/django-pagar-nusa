from rest_framework import serializers
from berita.models import Berita
from django.contrib.auth.models import User

class UserSerialize(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('id', 'username')

class NewsSerialize(serializers.ModelSerializer):
    penulis = UserSerialize(many=False)
    class Meta:
        model = Berita
        fields = ('title', 'thumbnail', 'body', 'penulis', 'slug', 'created_at')

