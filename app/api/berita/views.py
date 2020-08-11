from rest_framework import generics
from berita.models import Berita
from api.berita.serialize import NewsSerialize, AddNewsSerialize
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

class TambahBeritaApiView(generics.CreateAPIView):
    permission_classes = [IsAuthenticated, ]
    serializer_class = AddNewsSerialize

    def post(self, requst, *args, **kwargs):
        serialize = AddNewsSerialize(data=request.data)
        if serialize.is_valid(raise_exception=True):
            serialize.save()
            return Response(serialize.data)
        return Response(serialize.errors)


class NewsApiView(generics.ListAPIView):
    serializer_class = NewsSerialize
    queryset = Berita.objects.all().order_by('-id')[:5]
    
class AllNewsView(generics.ListAPIView):
    serializer_class = NewsSerialize
    queryset = Berita.objects.all()