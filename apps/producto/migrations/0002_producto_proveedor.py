# -*- coding: utf-8 -*-
# Generated by Django 1.9.6 on 2018-04-29 05:30
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('proveedor', '0001_initial'),
        ('producto', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='producto',
            name='proveedor',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='proveedor.Proveedor'),
        ),
    ]
