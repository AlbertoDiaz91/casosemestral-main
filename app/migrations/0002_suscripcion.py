# Generated by Django 4.0.1 on 2022-06-16 00:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='suscripcion',
            fields=[
                ('usuario', models.CharField(max_length=50, primary_key=True, serialize=False)),
            ],
        ),
    ]
