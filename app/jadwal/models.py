from django.db import models
from django.forms import model_to_dict
from django.utils.translation import gettext as _


# Create your models here.
class Jadwal(models.Model):
    title = models.CharField(max_length=255, verbose_name="Judul")
    start = models.DateField(blank=True, null=True, verbose_name="Mulai")
    end = models.DateField(blank=True, null=True, verbose_name="Akhir")
    tempat = models.TextField(blank=True, null=True)


    class Meta:
        verbose_name=_("Jadwal")
        verbose_name_plural = _("Jadwal")
        ordering = ['-end']

    def __str__(self):
        return self.title
    