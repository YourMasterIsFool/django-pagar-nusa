from rest_framework import serializers
from jadwal.models import Jadwal

class JadwalSerialize(serializers.ModelSerializer):
    class Meta:
        model = Jadwal
        fields = "__all__"

    def to_representation(self, instance):
        representation = {
            'id' : instance.id,
            'title':instance.title,
            'description': instance.title,
            'start': instance.start,
            'end': instance.end,
        }
        return representation