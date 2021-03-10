from rest_framework import serializers
from galery.models import Image, Video

class PostGalleryImageSerialize(serializers.ModelSerializer):
    title = serializers.CharField(required=False, allow_null=True)
    
    class Meta:
        model = Image
        fields = ['title', 'image']

    def validate_title(self, value):
        if not value:
            raise serializers.ValidationError('Title is required..!!')
        return value


class PostGalerryVideoApiSerialize(serializers.ModelSerializer):
    class Meta:
        model = Video
        fields = ['titile', 'youtube_id', 'url_video']

    