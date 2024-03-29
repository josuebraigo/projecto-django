# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2018-04-19 21:31
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Empleado',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=50)),
                ('direccion', models.CharField(max_length=50)),
                ('telefono_local', models.IntegerField()),
                ('telefono_movil', models.IntegerField()),
                ('fecha_nacimiento', models.DateField()),
                ('curp', models.CharField(max_length=50)),
                ('rfc', models.CharField(max_length=13)),
                ('nss', models.CharField(max_length=50)),
                ('sueldo', models.IntegerField()),
            ],
        ),
    ]
