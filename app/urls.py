from django.urls import path
from .views import *

urlpatterns = [
    path('', index ,name="index"),
    path('gatos1/', gatos1 ,name="gato"),
    path('perro1/', perro1 ,name="perro"),
    path('exotico1/', exotico1 ,name="exotico"),
    path('sinregistro/', sinregistro ,name="sinregistro"),
    
    




    path('perro1con/', perro1con ,name="perro1con"),
    path('gatos1con/', gatos1con ,name="gatos1con"),
    path('exotico1con/', exotico1con ,name="exotico1con"),
    path('fundacion/', fundacion ,name="fundacion"),
    path('historial/', historial ,name="historial"),
    path('segui/', segui ,name="segui"),

    path('vercarro/', vercarro ,name="vercarro"),
    path('vercarroeliminar/<codigo>/', vercarroeliminar ,name="vercarroeliminar"),

    path('agregar_producto/', agregar_producto ,name="agregar_producto"),
    path('modificar_producto/<codigo>/', modificar_producto ,name="modificar_producto"),
    path('listar_productos/', listar_productos ,name="listar_productos"),
    path('eliminar_producto/<codigo>/', eliminar_producto ,name="eliminar_producto"),
    
    path('agregar_cliente/', agregar_cliente ,name="agregar_cliente"),
    path('listar_cliente/', listar_cliente ,name="listar_cliente"),
    path('modificar_cliente/<run>/', modificar_cliente ,name="modificar_cliente"),
    path('eliminar_cliente/<run>/', eliminar_cliente ,name="eliminar_cliente"),
    


]
