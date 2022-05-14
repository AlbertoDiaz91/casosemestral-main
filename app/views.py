from django.shortcuts import render, redirect

from app.forms import ProductoForm, ClienteForm

from .models import *

from .forms import * 

# Create your views here.

#SECCION LISTAR

def index(request):
    productosAll = Producto.objects.all()
    datos = {
        'listaProductos': productosAll
    }
    return render(request,'app/index.html',datos)


def listar_clientes(request):
    clientesAll = Cliente.objects.all()
    datos = {
        'listaClientes': clientesAll
    }
    return render(request,'app/listar_clientes.html',datos)


def gatos1 (request):
    return render(request, 'app/gatos1.html')

def perro1 (request):
    return render(request, 'app/perro1.html')


def exotico1 (request):
    return render(request, 'app/exotico1.html')




def sinregistro (request):
    return render(request, 'app/sinregistro.html')

def perro1con (request):
    return render(request, 'app/perro1con.html')

def gatos1con (request):
    return render(request, 'app/gatos1con.html')

def exotico1con (request):
    return render(request, 'app/exotico1con.html')
    
def fundacion (request):
    return render(request, 'app/fundacion.html')

def historial (request):
    return render(request, 'app/historial.html')

def segui (request):
    return render(request, 'app/segui.html')

def vercarro (request):
    return render(request, 'app/vercarro.html')





def agregar_producto (request):
    datos = {
        'form' : ProductoForm()
    }
    if request.method == 'POST':
        formulario = ProductoForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            datos['mensaje'] = "Producto guardado correctamente!"
    return render(request, 'app/productos/agregar_producto.html',datos)




# Seccion modificar (SE NECESITA ID)
def modificar_producto (request, codigo):
    producto = Producto.objects.get(codigo=codigo)
    datos = {
        'form' : ProductoForm(instance=producto)
    }
    if request.method == 'POST':
        formulario = ProductoForm(request.POST, files=request.FILES,instance=producto)
        if formulario.is_valid():
            formulario.save()
            datos['mensaje'] = "Producto modificado correctamente!"
            datos['form'] = formulario

    return render(request, 'app/productos/modificar_producto.html',datos)



def listar_productos(request):
    productosAll = Producto.objects.all()
    datos = {
        'listaProductos': productosAll
    }
    return render(request,'app/productos/listar_productos.html',datos)


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






   

