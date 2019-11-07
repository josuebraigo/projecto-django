from django import forms

from apps.proveedor.models import Proveedor

class ProveedorForm(forms.ModelForm):

	class Meta:
		model = Proveedor

		fields = [
			'empresa',
			'empleado',
			'rfc',
		]

		labels = {
			'empresa': 'Empresa',
			'empleado': 'Empleado',
			'rfc': 'RFC',
		}

		widgets = {
			'empresa': forms.TextInput(attrs={'class':'form-control'}),
			'empleado': forms.TextInput(attrs={'class':'form-control'}),
			'rfc': forms.TextInput(attrs={'class':'form-control'}),
		}