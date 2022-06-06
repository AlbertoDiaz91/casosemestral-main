from rest_framework import serializers

from app.models import *

#Se encarga de hacer el crud desde el api 
class ProductoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Producto
        fields = '__all__'