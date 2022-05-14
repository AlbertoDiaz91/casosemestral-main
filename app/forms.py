from django import forms
from django.forms import ModelForm
from .models import *

# creamos un template de un formulario

class ProductoForm(ModelForm):

    nombre = forms.CharField(min_length=5,max_length=20)
    precio = forms.IntegerField(min_value=400)

    class Meta:
        model = Producto
        fields = ['codigo','nombre','marca','precio','stock', 'tipo', 'imagen']

        widgets = {
            'fecha_ingreso' : forms.SelectDateWidget(years=range(2020,2023))
        }
        


class ClienteForm(ModelForm):

    nombre = forms.CharField(min_length=5,max_length=20)
    run = forms.CharField(min_length=9,max_length=9)

    class Meta:
        model = Cliente
        fields = ['run','nombre','contraseña','mail','tipo','imagen','fecha_registro']

        widgets = {
            'fecha_registro' : forms.SelectDateWidget(years=range(2020,2023))
        }