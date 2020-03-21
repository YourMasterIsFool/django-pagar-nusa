from django import template
from berita.models import Berita

register = template.Library()

@register.simple_tag
def all_news():
    return Berita.objects.all()
