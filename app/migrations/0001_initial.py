# Generated by Django 4.0.1 on 2022-06-23 17:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Productos_Carro',
            fields=[
                ('codigo_producto', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre_producto', models.CharField(max_length=20)),
                ('precio_producto', models.IntegerField()),
                ('imagen_producto', models.ImageField(null=True, upload_to='productos_carro')),
                ('stock_producto', models.IntegerField()),
            ],
            options={
                'db_table': 'db_productos_carro',
            },
        ),
        migrations.CreateModel(
            name='Productos_Segui',
            fields=[
                ('seg_codigo', models.IntegerField(primary_key=True, serialize=False)),
                ('seg_nombre', models.CharField(max_length=20)),
                ('seg_precio', models.IntegerField()),
                ('seg_imagen', models.ImageField(null=True, upload_to='productos_segui')),
                ('seg_stock', models.IntegerField()),
            ],
            options={
                'db_table': 'db_productos_segui',
            },
        ),
        migrations.CreateModel(
            name='Suscripcion',
            fields=[
                ('suscripcion', models.BooleanField(null=True)),
                ('usuario', models.CharField(max_length=50, primary_key=True, serialize=False)),
            ],
        ),
        migrations.CreateModel(
            name='TipoCliente',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'db_tipo_cliente',
            },
        ),
        migrations.CreateModel(
            name='TipoMascota',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'db_tipo_mascota',
            },
        ),
        migrations.CreateModel(
            name='TipoPedido',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'db_tipo_pedido',
            },
        ),
        migrations.CreateModel(
            name='TipoProducto',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('tipo', models.CharField(max_length=20)),
            ],
            options={
                'db_table': 'db_tipo_producto',
            },
        ),
        migrations.CreateModel(
            name='Producto',
            fields=[
                ('codigo', models.IntegerField(primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=20)),
                ('marca', models.CharField(max_length=20)),
                ('precio', models.IntegerField()),
                ('stock', models.IntegerField()),
                ('imagen', models.ImageField(null=True, upload_to='productos')),
                ('created_at', models.DateField(auto_now_add=True)),
                ('updated_at', models.DateField(auto_now=True)),
                ('tipo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.tipoproducto')),
            ],
            options={
                'db_table': 'db_producto',
            },
        ),
        migrations.CreateModel(
            name='Pedido',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('numero', models.IntegerField()),
                ('producto', models.CharField(max_length=20)),
                ('total', models.CharField(max_length=20)),
                ('fecha', models.CharField(max_length=35)),
                ('tipo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.tipopedido')),
            ],
            options={
                'db_table': 'db_pedido',
            },
        ),
        migrations.CreateModel(
            name='Mascota',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('codigo', models.IntegerField()),
                ('nombre', models.CharField(max_length=20)),
                ('raza', models.CharField(max_length=20)),
                ('a??os', models.IntegerField()),
                ('tipo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.tipomascota')),
            ],
            options={
                'db_table': 'db_mascota',
            },
        ),
        migrations.CreateModel(
            name='Cliente',
            fields=[
                ('run', models.CharField(max_length=9, primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=20)),
                ('contrase??a', models.CharField(max_length=20)),
                ('mail', models.CharField(max_length=35)),
                ('imagen', models.ImageField(null=True, upload_to='clientes')),
                ('fecha_registro', models.DateField()),
                ('tipo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.tipocliente')),
            ],
            options={
                'db_table': 'db_cliente',
            },
        ),
        migrations.CreateModel(
            name='Carro',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.producto')),
            ],
            options={
                'db_table': 'db_carro',
            },
        ),
    ]
