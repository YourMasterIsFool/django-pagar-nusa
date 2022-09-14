# from collections import _KT
from dataclasses import field
from import_export import resources
from django.contrib import admin
from berita.models import Kategory, Berita, StatusNews
from import_export.admin import ImportExportModelAdmin, ExportMixin
# Register your models here.


# @admin.register(Kategory)
# class CategoryAdmin(admin.ModelAdmin):
#     list_display = ['name']


class CategoryResources(resources.ModelResource):
    class Meta:
        model = Kategory
        fields = ('name',)


class CategoryCustomAdmin(ExportMixin, admin.ModelAdmin):
    list_filter = ('name',)
    resource_class = Kategory

    list_display = ('name',)


admin.site.register(Kategory, CategoryCustomAdmin)


class BeritaResource(resources.ModelResource):
    class Meta:
        model = Berita
        fields = ('name',)


class BeritaCustomAdmin(ExportMixin, admin.ModelAdmin):
    list_filter = ['title', 'thumbnail', 'body', 'created_at', 'penulis']

    resource_class = Berita

    list_display = ['title', 'thumbnail', 'body', 'created_at', 'penulis']


admin.site.register(Berita, BeritaCustomAdmin)

# @admin.register(Berita)
# class BeritaAdmin(admin.ModelAdmin):
#     list_display = ['title', 'thumbnail', 'body', 'created_at', 'penulis']


class StatusBeritaResources(resources.ModelResource):
    class Meta:
        model = Berita
        fields = ('status',)


class StatusCustomBeritaAdmin(ExportMixin, admin.ModelAdmin):
    list_display = ['status']
    list_filter = ['status']
    resource_class = StatusNews


admin.site.register(StatusNews, StatusCustomBeritaAdmin)

# @admin.register(StatusNews)
# class StatusBeritaAdmin(admin.ModelAdmin):
#     list_display = ['status']
