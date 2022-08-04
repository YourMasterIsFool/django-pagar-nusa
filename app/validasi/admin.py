from django.contrib import admin
from anggota.models import Anggota
# Register your models here.

from django.utils.translation import gettext as _
from django.utils.html import format_html
class AnggotaBase(admin.ModelAdmin):
	pass


class AnggotaValidasi(Anggota):
	class Meta:
		proxy = True
		verbose_name=_("Validasi")
		verbose_name_plural = _("Validasi")


class AnggotaValidasiAdmin(AnggotaBase):
	list_display = ('nama','get_validation','get_photo_ktp');

	class Media: 

		css = {
			'all' : ('../../static/validasi_style.css')
		}

	def get_photo_ktp(self, obj):
		if obj.identity_pic:
			return format_html(f"""
				<img src="/media/{obj.identity_pic}"  style="width:150px; height:150px"/>
				""")

		return format_html("""
			<span>
			- </span>
			""")
	def get_validation(self, obj):

		if(obj.validate):
			return format_html(""" 
				<span style='padding: 10px 16px; background-color:green; border-radius: 20px; color: white; font-size:12px'>
					Tervalidasi
				</span>
			""")

		return format_html("""
			<span style='padding: 10px 16px; background-color:red; border-radius: 20px; color: white; font-size:12px'>
					Belum Tervalidasi
				</span>
		 """)


	get_validation.short_description = 'validasi'
	get_photo_ktp.short_description = "Photo KTP"

	def has_add_permission(self, request, obj=None):
	    return False

	def has_delete_permission(self, request, obj=None):

		return False
	# def get_queryset(self, request):

	# 	return self.model.objects.all()




 

admin.site.register(AnggotaValidasi, AnggotaValidasiAdmin)