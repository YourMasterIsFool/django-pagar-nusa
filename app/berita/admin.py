from django.contrib import admin
from berita.models import Kategory, Berita, StatusNews
# Register your models here.

@admin.register(Kategory)
class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name']
    

@admin.register(Berita)
class BeritaAdmin(admin.ModelAdmin):
    list_display = ['title', 'thumbnail', 'body', 'created_at', 'penulis']
    
@admin.register(StatusNews)
class StatusBeritaAdmin(admin.ModelAdmin):
    list_display = ['status']

