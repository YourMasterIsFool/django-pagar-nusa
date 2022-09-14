from django.contrib import admin
from anggota.models import Anggota
# Register your models here.
from django.utils.translation import gettext as _
from django.utils.html import format_html


class VerifikasiAnggota(Anggota):
    class Meta:
        proxy = True
        verbose_name = _("Verifikasi")
        verbose_name_plural = _("Verifikasi")


class VerikasiAnggotaAdmin(admin.ModelAdmin):
    list_display = ('nama', 'get_verifikasi', 'get_photo_ktp')
    exclude = ('status_verify', 'validate', 'author')

    def get_verifikasi(self, obj):

        if (obj.verifikasi):
            return format_html(""" 
				<span style='padding: 10px 16px; background-color:green; border-radius: 20px; color: white; font-size:12px'>
					Terverifikasi
				</span>
			""")

        return format_html("""
			<span style='padding: 10px 16px; background-color:red; border-radius: 20px; color: white; font-size:12px'>
					Belum Terverifikasi
				</span>
		 """)

    def get_photo_ktp(self, obj):
        if obj.identity_pic:
            return format_html(f"""
				<img src="/media/{obj.identity_pic}"  style="width:150px; height:150px"/>
				""")

        return format_html("""
			<span>
			- </span>
			""")
    get_photo_ktp.short_description = "Foto KTP"

    get_verifikasi.short_description = 'Verifikasi Anggota'

    def has_add_permission(self, request, obj=None):
        return False

    def has_delete_permission(self, request, obj=None):

        return False


admin.site.register(VerifikasiAnggota, VerikasiAnggotaAdmin)
