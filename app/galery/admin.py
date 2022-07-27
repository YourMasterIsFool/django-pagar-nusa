from django.contrib import admin
from galery.models import Image, Video
# Register your models here.

@admin.register(Image)
class ImageAdmin(admin.ModelAdmin):
    list_display = ['title', 'image']
    

@admin.register(Video)
class VideoAdmin(admin.ModelAdmin):
    list_display = ['title', 'url_video', 'youtube_id']
    