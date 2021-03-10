from rest_framework import generics
from berita.models import Berita
from api.berita.serialize import NewsSerialize, AddNewsSerialize
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

class TambahBeritaApiView(generics.CreateAPIView):
    permission_classes = [IsAuthenticated, ]
    serializer_class = AddNewsSerialize

    def post(self, request, *args, **kwargs):
        print(request.data['thumbnail'])
        serialize = AddNewsSerialize(data=request.data)
        if serialize.is_valid(raise_exception=True):
            news = Berita()
            news.title = request.data.get('title')
            news.thumbnail = request.data['thumbnail']
            news.penulis = request.user
            news.body = request.data.get('body')
            news.save()
            return Response({
                "id" : news.id,
                "title":news.title,
                "thumbnail":news.thumbnail.url,
                "penulis":{
                    "id":news.penulis.id,
                    "username":news.penulis.username,
                    "email":news.penulis.email
                }
            })
        return Response(serialize.errors)

class DeleteNewsApiView(generics.DestroyAPIView):
    permission_classes = [IsAuthenticated,]
    
    def get_queryset(self):
        pk = self.kwargs['pk']
        return Berita.objects.filter(pk=pk)
        


class NewsApiView(generics.ListAPIView):
    serializer_class = NewsSerialize
    queryset = Berita.objects.all()
    
    def get_queryset(self):
        return self.queryset.filter(status__status="tranding").order_by('-id')[:5]
    
    
    
class AllNewsView(generics.ListAPIView):
    serializer_class = NewsSerialize
    queryset = Berita.objects.all()