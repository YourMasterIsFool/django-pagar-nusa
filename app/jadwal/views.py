from django.shortcuts import render

from jadwal.models import Jadwal
from datetime import date, datetime
# Create your views here.


def index_jadwal(request):

    listJadwal = Jadwal.objects.filter(end__gte=date.today())

    context = {
        'listJadwal': listJadwal
    }

    return render(request, 'jadwal/index.html', context=context)
