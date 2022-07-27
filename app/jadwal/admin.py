from django.contrib import admin
from jadwal.models import Jadwal

# Register your models here.
@admin.register(Jadwal)
class JadwalAdmin(admin.ModelAdmin):
    list_display = ['title', 'start', 'end']
    