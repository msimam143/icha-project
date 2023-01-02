from django.http import HttpResponse
from django.shortcuts import render

def index(request):
    context={
        'halaman' :'home',
        'deskripsi':'ini halaman home',
    }
    return render(request,'index.html',context)
    
def about(request):
    context={
        'halaman' :'about',
        'deskripsi':'ini halaman about',

    }
    return render(request, 'about.html',context)
    