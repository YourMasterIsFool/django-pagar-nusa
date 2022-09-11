from django.db import models

# Create your models here.

class PAC(models.Model):
	PAC = models.CharField(max_length=255, null=True)
	PAC = models.CharField(unique=True, null=True, max_length=10)