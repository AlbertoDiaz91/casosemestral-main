# Generated by Django 4.0.1 on 2022-06-16 01:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0002_suscripcion'),
    ]

    operations = [
        migrations.AddField(
            model_name='suscripcion',
            name='suscripcion',
            field=models.BooleanField(null=True),
        ),
    ]