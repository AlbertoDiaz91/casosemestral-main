# Generated by Django 4.0.1 on 2022-06-16 18:08

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0003_suscripcion_suscripcion'),
    ]

    operations = [
        migrations.CreateModel(
            name='Productos_Segui',
            fields=[
                ('seg_codigo', models.IntegerField(primary_key=True, serialize=False)),
                ('seg_nombre', models.CharField(max_length=20)),
                ('seg_precio', models.IntegerField()),
                ('seg_imagen', models.ImageField(null=True, upload_to='productos_segui')),
            ],
            options={
                'db_table': 'db_productos_segui',
            },
        ),
    ]
