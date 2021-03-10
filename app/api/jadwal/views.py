from rest_framework import generics
from jadwal.models import Jadwal
from api.jadwal.serialize import JadwalSerialize


class JadwalApiView(generics.ListAPIView):
    serializer_class = JadwalSerialize
    queryset = Jadwal.objects.all()


