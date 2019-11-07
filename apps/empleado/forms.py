from django import forms

from apps.empleado.models import Empleado

class EmpleadoForm(forms.ModelForm):

	class Meta:
		model = Empleado

		fields = [
			'nombre',
			'direccion',
			'telefono_local',
			'telefono_movil',
			'fecha_nacimiento',
			'curp',
			'rfc',
			'nss',
			'sueldo',
		]

		labels = {
			'nombre': 'Nombre',
			'direccion': 'Dirección',
			'telefono_local': 'Teléfono Local',
			'telefono_movil': 'Teléfono Móvil',
			'fecha_nacimiento': 'Fecha de Nacimiento',
			'curp': 'CURP',
			'rfc': 'RFC',
			'nss': 'NSS',
			'sueldo': 'Sueldo',
		}

		widgets = {
			'nombre': forms.TextInput(attrs={'class':'form-control'}),
			'direccion': forms.TextInput(attrs={'class':'form-control'}),
			'telefono_local': forms.TextInput(attrs={'class':'form-control'}),
			'telefono_movil': forms.TextInput(attrs={'class':'form-control'}),
			'fecha_nacimiento': forms.TextInput(attrs={'class':'form-control'}),
			'curp': forms.TextInput(attrs={'class':'form-control'}),
			'rfc': forms.TextInput(attrs={'class':'form-control'}),
			'nss': forms.TextInput(attrs={'class':'form-control'}),
			'sueldo': forms.TextInput(attrs={'class':'form-control'}),
		}	