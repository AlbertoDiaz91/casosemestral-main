import requests


from django.contrib.auth.models import User, Group
from django.shortcuts import render, redirect

from app.forms import ProductoForm, ClienteForm

from .models import *

from .forms import * 

# DJANGO
from django.contrib import messages
from django.contrib.auth import authenticate, login
from django.contrib.auth.decorators import login_required, permission_required





# Create your views here.

#SECCION LISTAR


def suscripcion (request):

    if request.method == 'POST':
        suscripcion = Suscripcion ()
        suscripcion.suscripcion = request.POST.get('suscribirse')
        suscripcion.usuario = request.POST.get('usuario')
        
        suscripcion.save()

    return render(request, 'app/suscripcion.html')


    


def listar_clientes(request):
    clientesAll = Cliente.objects.all()
    datos = {
        'listaClientes': clientesAll
    }
    return render(request,'app/listar_clientes.html',datos)



  # apis de productos (nuestros) y api de digimon
def index (request):

    
    response2 = requests.get('https://digimon-api.vercel.app/api/digimon').json()
     
    

    productosAll = Producto.objects.all()
    datos = {'listaProductos': productosAll,
             'listaPet' : response2
             
    }
             
        
    
    if request.method == 'POST':
        carro = Productos_Carro()
        carro.codigo_producto = request.POST.get('codigo_producto')
        carro.nombre_producto = request.POST.get('nombre_producto')
        carro.precio_producto = request.POST.get('precio_producto')
        carro.imagen_producto = request.POST.get('imagen_producto')
        carro.stock_producto = request.POST.get('stock_producto')
        carro.save()
        stocks = request.POST.get('stock_producto')
        codigop = request.POST.get('codigo_producto')
        producto = Producto.objects.get(codigo=int(codigop))
        producto.stock -= int(stocks)
        producto.save()
    
    

    
   
    return render(request,'app/index.html',datos)

# Registro usuario
def registro (request):
    datos = {'form' : RegistroUsuarioForm()}

    if request.method == 'POST':
        formulario = RegistroUsuarioForm(request.POST)
        if formulario.is_valid():
            formulario.save()
            g = Group.objects.get(name='cliente')
            users = User.objects.all()
            for u in users:
                g.user_set.add(u)
            #user = authenticate(username=formulario.cleaned_data["username"],password=formulario.cleaned_data["password1"])
            #login(request,user)
            messages.success(request,'Registrado correctamente!')
            return redirect(to='index')
        datos['form'] = formulario
    
    return render(request, 'registration/registro.html', datos)
   
def fundacion (request):
    return render(request, 'app/fundacion.html')


# APIS


def apicualquiera (request):
    response = requests.get('http://127.0.0.1:8000/api/producto/').json()
    datos = { 
        'listaJson' : response,
    }

    return render(request, 'app/apicualquiera.html',datos)



def historial (request):
    return render(request, 'app/historial.html')


def segui (request):
    segui = Productos_Segui.objects.all()
    datos = {'listaCarrito': segui }




    return render(request, 'app/segui.html', datos)


 # Funciones de vercarro

def vercarro (request):
    carro = Productos_Carro.objects.all()
    datos = {
        'listaCarrito': carro,
        
        'total' : round(sum(aux.precio_producto * aux.stock_producto for aux in carro)),
        'descuento' : round(sum(aux.precio_producto for aux in carro) *  0.05),
        'totalVerdad' : round(sum(aux.precio_producto for aux in carro) *  0.95),
        
    } 

    if request.method == 'POST':
        segui = Productos_Segui()
        segui.seg_codigo = request.POST.get('seg_codigo')
        segui.seg_nombre = request.POST.get('seg_nombre')
        segui.seg_precio = request.POST.get('seg_precio')
        segui.seg_imagen = request.POST.get('seg_imagen')
        segui.seg_stock = request.POST.get('seg_stock')
        segui.save()

        



    return render(request, 'app/vercarro.html',datos)


def vercarroeliminar (request, codigo_producto):
    producto = Productos_Carro.objects.get(codigo_producto=codigo_producto)
    producto.delete()

    return redirect(to="vercarro")



def seguieliminar (request, seg_codigo):
    producto = Productos_Segui.objects.get(seg_codigo=seg_codigo)
    producto.delete()

    return redirect(to="segui")






@permission_required('app.add_producto')
def agregar_producto (request):
    datos = {
        'form' : ProductoForm()
    }
    if request.method == 'POST':
        formulario = ProductoForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request,'Producto guardado correctamente!')
    return render(request, 'app/productos/agregar_producto.html',datos)




# Seccion modificar (SE NECESITA ID)
@permission_required('app.change_producto')
def modificar_producto (request, codigo):
    producto = Producto.objects.get(codigo=codigo)
    datos = {
        'form' : ProductoForm(instance=producto)
    }
    if request.method == 'POST':
        formulario = ProductoForm(request.POST, files=request.FILES,instance=producto)
        if formulario.is_valid():
            formulario.save()
            messages.success(request,'Producto modificado correctamente!')
            datos['form'] = formulario

    return render(request, 'app/productos/modificar_producto.html',datos)


@permission_required('app.view_producto')
def listar_productos(request):
    productosAll = Producto.objects.all()
    datos = {
        'listaProductos': productosAll
    }
    return render(request,'app/productos/listar_productos.html',datos)



@permission_required('app.delete_producto')
def eliminar_producto (request, codigo):
    producto = Producto.objects.get(codigo=codigo)
    producto.delete()

    return redirect(to="listar_productos")





 # ************ METODOS DEL CLIENTE ************


def agregar_cliente (request):
    datos = {
        'form' : ClienteForm()
    }
    if request.method == 'POST':
        formulario = ClienteForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            datos['mensaje'] = "Cliente guardado correctamente!"
    return render(request, 'app/clientes/agregar_cliente.html',datos)


def listar_cliente(request):
    clientesAll = Cliente.objects.all()
    datos = {
        'listaCliente': clientesAll
    }
    return render(request,'app/clientes/listar_cliente.html',datos)


def modificar_cliente (request, run):
    cliente = Cliente.objects.get(run=run)
    datos = {
        'form' : ClienteForm(instance=cliente)
    }
    if request.method == 'POST':
        formulario = ClienteForm(request.POST, files=request.FILES,instance=cliente)
        if formulario.is_valid():
            formulario.save()
            datos['mensaje'] = "Cliente modificado correctamente!"
            datos['form'] = formulario

    return render(request, 'app/clientes/modificar_cliente.html',datos)


def eliminar_cliente (request, run):
    cliente = Cliente.objects.get(run=run)
    cliente.delete()

    return redirect(to="listar_cliente")






   

