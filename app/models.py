from django.db import models

# Create your models here.

# 2 entidades con sus atributos , cada vez que modificquemos aqui useamos el makemigration y el migrate


class TipoProducto(models.Model):
    tipo = models.CharField(max_length=20)

    def __str__(self):
        return self.tipo

    class Meta:
        db_table = 'db_tipo_producto'


class TipoMascota(models.Model):
    tipo = models.CharField(max_length=20)

    def __str__(self):
        return self.tipo

    class Meta:
        db_table = 'db_tipo_mascota'

class TipoCliente(models.Model):
    tipo = models.CharField(max_length=20)

    def __str__(self):
        return self.tipo

    class Meta:
        db_table = 'db_tipo_cliente'


class TipoPedido(models.Model):
    tipo = models.CharField(max_length=20)

    def __str__(self):
        return self.tipo
    
    class Meta:
        db_table = 'db_tipo_pedido'

    
    



    

 


class Producto(models.Model):
    codigo = models.IntegerField(null=False,primary_key=True)
    nombre = models.CharField(max_length=20)
    marca = models.CharField(max_length=20)
    precio = models.IntegerField()
    stock = models.IntegerField()
    tipo = models.ForeignKey(TipoProducto,on_delete=models.CASCADE)
    imagen = models.ImageField(upload_to="productos", null=True)
    created_at = models.DateField(auto_now_add=True)
    updated_at = models.DateField(auto_now=True)

    def __str__(self):
        return self.nombre

    class Meta:
        db_table = 'db_producto'
 


class Mascota(models.Model):
    codigo = models.IntegerField()
    nombre = models.CharField(max_length=20)
    raza = models.CharField(max_length=20)
    años = models.IntegerField()
    tipo = models.ForeignKey(TipoMascota,on_delete=models.CASCADE)

    def __str__(self):
        return self.nombre

    class Meta:
        db_table = 'db_mascota'



class Cliente(models.Model):
    run = models.CharField(null=False,primary_key=True,max_length=9)
    nombre = models.CharField(max_length=20)
    contraseña = models.CharField(max_length=20)
    mail = models.CharField(max_length=35)
    tipo = models.ForeignKey(TipoCliente,on_delete=models.CASCADE)
    imagen = models.ImageField(upload_to="clientes", null=True)
    fecha_registro = models.DateField()

    def _str_(self):
        return self.nombre

    class Meta:
        db_table = 'db_cliente'



class Pedido(models.Model):
    numero = models.IntegerField()
    producto = models.CharField(max_length=20)
    total = models.CharField(max_length=20)
    fecha = models.CharField(max_length=35)
    tipo = models.ForeignKey(TipoPedido,on_delete=models.CASCADE)

    def __str__(self):
        return self.producto

    class Meta:
        db_table = 'db_pedido'


    # python manage.py makemigration crea el script dela base de datos

    # python manage.py migrate crea la base de datos a partir del script


    # admin ---- admin1


class Productos_Carro(models.Model):
    codigo_producto = models.IntegerField(null=False,primary_key=True)
    nombre_producto = models.CharField(max_length=20)
    precio_producto = models.IntegerField()
    imagen_producto = models.ImageField(upload_to="productos_carro", null=True)
    

    def __str__(self):
        return self.nombre_producto

    class Meta:
        db_table = 'db_productos_carro'

class Carro (models.Model):
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)

    class Meta:
        db_table = 'db_carro'






