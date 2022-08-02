from django.contrib import admin
from anggota.models import Anggota
# Register your models here.
from django.utils.translation import gettext as _
from django.utils.html import format_html




class VerifikasiAnggota(Anggota):
	class Meta:
		proxy = True
		verbose_name=_("Verifikasi")
		verbose_name_plural = _("Verifikasi")


class VerikasiAnggotaAdmin(admin.ModelAdmin):
	list_display = ('nama', 'get_verifikasi')
	exclude = ('status_verify',)

	def get_verifikasi(self, obj):

		if(obj.verifikasi):
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


	get_verifikasi.short_description = 'Verifikasi Anggota'


	def has_add_permission(self, request, obj=None):
	    return False

	def has_delete_permission(self, request, obj=None):

		return False




admin.site.register(VerifikasiAnggota, VerikasiAnggotaAdmin)