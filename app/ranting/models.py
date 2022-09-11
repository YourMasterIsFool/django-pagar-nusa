from django.db import models
from pac.models import PAC
# Create your models here.

class Ranting(models.Model):
	ranting = models.CharField(max_length=255)
	pac_kode = models.ForeignKey(PAC, db_column='pac_kode', on_delete=models.CASCADE)
