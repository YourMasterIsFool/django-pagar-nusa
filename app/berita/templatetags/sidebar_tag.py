from django import template
from berita.models import Berita, StatusNews


register = template.Library()

@register.simple_tag
def all_news():
    status = StatusNews.objects.get(status="breaking news")
    return Berita.objects.filter(status=status)
