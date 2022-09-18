from django.contrib import admin
from galery.models import Image, Video
# Register your models here.
from import_export.admin import ImportExportModelAdmin, ExportMixin
from import_export import resources

from import_export.formats import base_formats


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

    def get_export_formats(self):
        formats = (
             base_formats.HTML,
             base_formats.XLS,
             base_formats.XLSX,
        )

        return [f for f in formats if f().can_export()]

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

    def get_export_formats(self):
        formats = (
             base_formats.HTML,
             base_formats.XLS,
             base_formats.XLSX,
        )

        return [f for f in formats if f().can_export()]
