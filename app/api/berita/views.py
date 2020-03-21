from rest_framework import generics
from berita.models import Berita
from api.berita.serialize import NewsSerialize

class NewsApiView(generics.ListAPIView):
    serializer_class = NewsSerialize
    queryset = Berita.objects.all().order_by('-id')[:5]
    
class AllNewsView(generics.ListAPIView):
    serializer_class = NewsSerialize
    queryset = Berita.objects.all()