from django.contrib import admin
from.models import *


# Register your models here.

class ProductoAdmin(admin.ModelAdmin):
    list_display = ['codigo','nombre','marca','precio','stock', 'tipo', 'imagen']
    search_fields = ['codigo']
    list_per_page = 3



class MascotaAdmin(admin.ModelAdmin):
    list_display = ['codigo','nombre','raza','años','tipo']
    search_fields = ['codigo']
    list_per_page = 3

class ClienteAdmin(admin.ModelAdmin):
    list_display = ['run','nombre','contraseña','mail','tipo', 'imagen', 'fecha_registro']
    search_fields = ['run']
    list_per_page = 3


class PedidoAdmin(admin.ModelAdmin):
    list_display = ['numero','producto','total','fecha','tipo']
    search_fields = ['numero']
    list_per_page = 3

class PerroAdmin(admin.ModelAdmin):
    list_display = ['codigo','nombre','raza','imagen','fecha_nacimiento']
    search_fields = ['codigo']
    list_per_page = 3




admin.site.register(TipoProducto)
admin.site.register(Producto,ProductoAdmin)

admin.site.register(Mascota,MascotaAdmin)
admin.site.register(TipoMascota)


admin.site.register(Cliente,ClienteAdmin)
admin.site.register(TipoCliente)


admin.site.register(Pedido,PedidoAdmin)
admin.site.register(TipoPedido)


admin.site.register(Perro,PerroAdmin)
admin.site.register(TipoPerro)



 