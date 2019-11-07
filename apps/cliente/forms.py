from django import forms

from apps.cliente.models import Cliente

class ClienteForm(forms.ModelForm):

	class Meta:
		model = Cliente

		fields = [
			'tipo_cliente',
			'nombre',
			'rfc',
		]

		labels = {
			'tipo_cliente': 'Tipo Cliente',
			'nombre': 'Nombre',
			'rfc': 'RFC',
		}

		widgets = {
			'tipo_cliente': forms.TextInput(attrs={'class':'form-control'}),
			'nombre': forms.TextInput(attrs={'class':'form-control'}),
			'rfc': forms.TextInput(attrs={'class':'form-control'}),
		}	