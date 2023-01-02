from django import forms

class komen_Form(forms.Form):
    email = forms.EmailField(
        max_length=50,
        widget=forms.TextInput(
        attrs={
            'class':'form-control',
            'placeholder':'masukkan email'
            }
        )
    )
    isi = forms.CharField(
        max_length=500,
        widget=forms.TextInput(
            attrs={
                'class':'form-control',
                'placeholder':'ini isi komentar'
            }
        )
    )