from django.contrib import admin
from galery.models import Image, Video
# Register your models here.
from import_export.admin import ImportExportModelAdmin, ExportMixin
from import_export import resources


# @admin.register(Image)
# class ImageAdmin(admin.ModelAdmin):
#     list_display = ['title', 'image']

class ImageResources(resources.ModelResource):
    class Meta:
        model = Image
        fields = ['title', 'image']


class ImageAdmin(ExportMixin, admin.ModelAdmin):
    list_display = ['title', 'image']
    list_filter = ['title', 'image']

    resource_class = ImageResources


admin.site.register(Image, ImageAdmin)


class VideoResource(resources.ModelResource):
    class Meta:
        model = Video
        # fields = ['title', 'image']
        fields = ['title', 'url_video', 'youtube_id']


@admin.register(Video)
class VideoAdmin(ExportMixin, admin.ModelAdmin):
    list_display = ['title', 'url_video', 'youtube_id']
