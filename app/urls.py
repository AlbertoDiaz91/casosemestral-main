from django.urls import path
from .views import *

urlpatterns = [
    path('', index ,name="index"),
    
    path('registro/', registro ,name="registro"),
  
    
    




   
    path('fundacion/', fundacion ,name="fundacion"),
    path('historial/', historial ,name="historial"),
    path('segui/', segui ,name="segui"),

    path('vercarro/', vercarro ,name="vercarro"),
    path('vercarroeliminar/<codigo_producto>/', vercarroeliminar ,name="vercarroeliminar"),

    path('agregar_producto/', agregar_producto ,name="agregar_producto"),
    path('modificar_producto/<codigo>/', modificar_producto ,name="modificar_producto"),
    path('listar_productos/', listar_productos ,name="listar_productos"),
    path('eliminar_producto/<codigo>/', eliminar_producto ,name="eliminar_producto"),
    
    path('agregar_cliente/', agregar_cliente ,name="agregar_cliente"),
    path('listar_cliente/', listar_cliente ,name="listar_cliente"),
    path('modificar_cliente/<run>/', modificar_cliente ,name="modificar_cliente"),
    path('eliminar_cliente/<run>/', eliminar_cliente ,name="eliminar_cliente"),
    


]
