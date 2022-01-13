from django.contrib import admin
from anggota.models import Anggota
# Register your models here.

class AnggotaAdmin(admin.ModelAdmin):
    list_display = [ 'avatar', 'nama', 'alamat', 'no_hp','jabatan', 'status', 'validate', 'tingkat', 'status_verify']
    class Meta:
        model = Anggota

admin.site.register(Anggota, AnggotaAdmin)
