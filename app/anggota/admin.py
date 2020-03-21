from django.contrib import admin
from anggota.models import Anggota
# Register your models here.

class AnggotaAdmin(admin.ModelAdmin):
    list_display = ['nama', 'alamat', 'no_hp','jabatan', 'status']
    class Meta:
        model = Anggota

admin.site.register(Anggota, AnggotaAdmin)
