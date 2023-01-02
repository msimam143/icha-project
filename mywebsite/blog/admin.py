from django.contrib import admin
from . import models

class tampilartikel(admin.ModelAdmin):
    icon_name='description'
    list_display = ['judul','kategori','tanggal']

admin.site.register(models.artikel,tampilartikel)

class tampilkategori(admin.ModelAdmin):
    icon_name='format_list_bulleted'
    list_display = ['nama','keterangan']
admin.site.register(models.kategori,tampilkategori)

class tampilkomen(admin.ModelAdmin):
    icon_name='chat'
    list_display = ['email','tanggal']
admin.site.register(models.komen,tampilkomen)
