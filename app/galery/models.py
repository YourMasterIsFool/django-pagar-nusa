from django.db import models

# Create your models here.
class Image(models.Model):
    title = models.CharField(max_length=120)
    image = models.ImageField(upload_to='gallery')

    def __str__(self):
        return self.title

class Video(models.Model):
    title = models.CharField(max_length=100)
    youtube_id = models.CharField(max_length=122)
    url_video = models.URLField(max_length=1200)


    def __str__(self):
        return self.title
    