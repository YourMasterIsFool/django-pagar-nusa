from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework import generics
from anggota.models import Anggota
from api.anggota.serialize import PostAnggotaSerialize, ListAnggotaSerialize, EditAnggotaSerialize

class ListAnggotaApiView(generics.ListAPIView):
    serializer_class = ListAnggotaSerialize
    permission_classes = [IsAuthenticated]
    queryset = Anggota.objects.all().order_by('-id')


class PostAnggotaApiView(generics.CreateAPIView):
    serializer_class = PostAnggotaSerialize
    permission_classes = [IsAuthenticated]

    def post(self, request, *args, **kwargs):
        serialize = PostAnggotaSerialize(data=request.data)
        if serialize.is_valid(raise_exception=True):
            anggota = Anggota()
            anggota.nama = request.data.get('nama')
            anggota.alamat = request.data.get('alamat')
            anggota.jabatan = request.data.get('jabatan')
            anggota.status = request.data.get('status')
            anggota.no_hp = request.data.get('no_hp')
            anggota.profile_pic = request.data['profile_pic']
            anggota.save()
            return Response({
                "id":anggota.id,
                "nama":anggota.nama,
                'jabatan':anggota.jabatan,
                "status":anggota.status,
                "no_hp":anggota.no_hp,
                "proifle_pic":anggota.profile_pic.url
            })
        return Response(serialize.errors)

class EditAngotaApiview(generics.UpdateAPIView):
    serializer_class = EditAnggotaSerialize
    permission_classes = [IsAuthenticated]

    def update(self, request, pk, *args, **kwargs):
        serialize = EditAnggotaSerialize(data=request.data)
        if serialize.is_valid(raise_exception=True):
            serialize.save()
            return Response(serialize.data)
        return Response(serialize.errors)

class DeleteAnggotaApiView(generics.DestroyAPIView):
    serializer_class = ListAnggotaApiView
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        pk = self.kwargs['pk']
        return Anggota.objects.filter(id=pk)
    
    
        
