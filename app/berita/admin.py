from django.contrib import admin
from berita.models import Kategory, Berita, StatusNews
# Register your models here.

class CategoryAdmin(admin.ModelAdmin):
    list_display = ['name']
    class Meta:
        model = Kategory


class BeritaAdmin(admin.ModelAdmin):
    list_display = ['title', 'thumbnail', 'body', 'created_at', 'penulis']
    class Meta:
        model = Berita

admin.site.site_header = "PAGAR NUSA Admin Panel"
admin.site.site_title = "PAGAR NUSA Admin Panel"
admin.site.index_title = "PAGAR NUSA Admin Panel"
admin.site.register(Kategory, CategoryAdmin)
admin.site.register(Berita, BeritaAdmin)
admin.site.register(StatusNews)

