from django.db import models

# Create your models here.

class Empleado(models.Model):
	nombre = models.CharField(max_length = 50)
	direccion = models.CharField(max_length = 50)
	telefono_local = models.CharField(max_length = 50)
	telefono_movil = models.CharField(max_length = 50)
	fecha_nacimiento = models.CharField(max_length = 50)
	curp = models.CharField(max_length = 50)
	rfc = models.CharField(max_length = 50)
	nss = models.CharField(max_length = 50)
	sueldo = models.IntegerField()

	def __str__(self):
		return '{}'.format(self.nombre)