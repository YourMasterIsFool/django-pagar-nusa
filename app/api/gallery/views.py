from rest_framework import generics
from rest_framework.response import Response
from api.gallery.serialize import PostGalleryImageSerialize
from rest_framework.permissions import IsAuthenticated
from galery.models import Image


class PostGalleryImageApiView(generics.CreateAPIView):
    permission_classes = [IsAuthenticated]
    serializer_class = PostGalleryImageSerialize

    def post(self, request, *args, **kwargs):
        serialise = PostGalleryImageSerialize(data=request.data)
        if serialise.is_valid(raise_exception=True):
            gallery = Image()
            gallery.title = request.data.get('title')
            gallery.image = request.data['image']
            gallery.save()
            return Response({
                'id':gallery.id,
                "image":gallery.image.url,
                'title':gallery.title
            })
        return Response(serialise.errors)