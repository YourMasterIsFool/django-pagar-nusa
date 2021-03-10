from rest_framework import serializers
from anggota.models import Anggota

class ListAnggotaSerialize(serializers.ModelSerializer):
    class Meta:
        model = Anggota
        fields = "__all__"


class PostAnggotaSerialize(serializers.ModelSerializer):
    nama = serializers.CharField(required=False, allow_null=True)
    alamat = serializers.CharField(required=False, allow_null=True)
    status = serializers.CharField(required=False, allow_null=True)
    jabatan = serializers.CharField(required=False, allow_null=True)
    profile_pic = serializers.ImageField()  
    no_hp = serializers.IntegerField()  
    class Meta:
        model = Anggota
        fields = ['nama','alamat','no_hp', 'profile_pic','status', 'jabatan']

    
    def validate_nama(self, value):
        if not value:
            raise serializers.ValidationError("FIeld name is required..!")
        return value

    def validate_alamat(self, value):
        if not value:
            raise serializers.ValidationError("Field alamat is required..!")
        return value

    def validate_status(self, value):
        if not value:
            raise serializers.ValidationError('Field status is requeired.!')
        return value

    def validete_jabatan(self, value):
        if not value:
            raise serializers.ValidationError('jabatan is required')
        return value

class EditAnggotaSerialize(serializers.ModelSerializer):
    nama = serializers.CharField(required=False, allow_null=True)
    alamat = serializers.CharField(required=False, allow_null=True)
    status = serializers.CharField(required=False, allow_null=True)
    jabatan = serializers.CharField(required=False, allow_null=True)
    no_hp = serializers.IntegerField()  
    class Meta:
        model = Anggota
        fields = ['nama','alamat','no_hp', 'status', 'jabatan']

    
    def validate_nama(self, value):
        if not value:
            raise serializers.ValidationError("FIeld name is required..!")
        return value

    def validate_alamat(self, value):
        if not value:
            raise serializers.ValidationError("Field alamat is required..!")
        return value

    def validate_status(self, value):
        if not value:
            raise serializers.ValidationError('Field status is requeired.!')
        return value

    def validete_jabatan(self, value):
        if not value:
            raise serializers.ValidationError('jabatan is required')
        return value