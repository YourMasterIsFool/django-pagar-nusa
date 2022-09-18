from dataclasses import field
from django.contrib import admin
from jadwal.models import Jadwal
from import_export.admin import ImportExportModelAdmin, ExportMixin
# Register your models here.
from import_export import resources

from import_export.formats import base_formats


class JadwalResource(resources.ModelResource):

    class Meta:
        model = Jadwal
        exclude = ('imported', )
        fields = ('title', 'start', 'end', 'tempat')


# @admin.register(Jadwal)
# class JadwalAdmin(admin.ModelAdmin):
#     list_display = ['title', 'start', 'end', 'tempat']

#     list_filter = ('title', 'start', 'end', 'tempat')


class JadwalAdmin(ExportMixin, admin.ModelAdmin):
    list_filter = ('title', 'start', 'end', 'tempat')
    resource_class = JadwalResource

    def get_export_formats(self):
        formats = (
             base_formats.HTML,
             base_formats.XLS,
             base_formats.XLSX,
        )

        return [f for f in formats if f().can_export()]


admin.site.register(Jadwal, JadwalAdmin)
