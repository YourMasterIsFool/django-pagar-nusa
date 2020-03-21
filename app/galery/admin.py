from django.contrib import admin
from galery.models import Image, Video
# Register your models here.

class ImageAdmin(admin.ModelAdmin):
    list_display = ['title', 'image']
    class Meta:
        model = Image


class VideoAdmin(admin.ModelAdmin):
    list_display = ['title', 'url_video', 'youtube_id']
    class Meta:
        model = Video


admin.site.register(Image, ImageAdmin)
admin.site.register(Video, VideoAdmin)
