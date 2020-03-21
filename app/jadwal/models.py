from django.db import models

# Create your models here.
class Jadwal(models.Model):
    title = models.CharField(max_length=255)
    start = models.DateField(blank=True, null=True)
    end = models.DateField(blank=True, null=True)

    def __str__(self):
        return self.title
    