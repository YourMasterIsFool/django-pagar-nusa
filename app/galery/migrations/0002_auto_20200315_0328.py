# Generated by Django 2.1 on 2020-03-15 03:28

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('galery', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='video',
            name='thumbnail',
        ),
        migrations.AddField(
            model_name='video',
            name='youtube_id',
            field=models.CharField(default=1, max_length=122),
            preserve_default=False,
        ),
    ]
