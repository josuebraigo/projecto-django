from django.db import models

# Create your models here.

class Cliente(models.Model):
	tipo_cliente = models.CharField(max_length = 50)
	nombre = models.CharField(max_length = 50)
	rfc = models.CharField(max_length = 13)