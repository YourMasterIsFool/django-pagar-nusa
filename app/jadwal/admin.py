from django.contrib import admin
from jadwal.models import Jadwal

# Register your models here.

class JadwalAdmin(admin.ModelAdmin):
    list_display = ['title', 'start', 'end']
    class Meta:
        model = Jadwal

admin.site.register(Jadwal, JadwalAdmin)
