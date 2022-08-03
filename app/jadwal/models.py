from django.db import models
from django.forms import model_to_dict
from django.utils.translation import gettext as _

# Create your models here.
class Jadwal(models.Model):
    title = models.CharField(max_length=255)
    start = models.DateField(blank=True, null=True)
    end = models.DateField(blank=True, null=True)
    tempat = models.TextField(blank=True, null=True)


    class Meta:
        verbose_name=_("Jadwal")
        verbose_name_plural = _("Jadwal")
        ordering = ['-end']

    def __str__(self):
        return self.title
    