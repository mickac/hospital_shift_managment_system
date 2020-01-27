from django.db import models
from django import forms
from django.contrib.postgres.fields import ArrayField
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.forms import(
    ModelForm,
    Textarea
)

class StaffAdd(UserCreationForm):
    first_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
    last_name = forms.CharField(max_length=30, required=False, help_text='Optional.')
    email = forms.EmailField(max_length=254, help_text='Required. Inform a valid email address.')

    class Meta:
        model = User
        fields = ['username', 'first_name', 'last_name', 'email', 'password1', 'password2',]

class Country(models.Model):
    name = models.CharField(max_length=50, unique=True)

    def __str__(self):
        return self.name

class CountryAdd(ModelForm):
    class Meta:
        model = Country
        fields = ['name']

class City(models.Model):
    name = models.CharField(max_length=50, unique=True)
    country = models.ForeignKey(Country, on_delete=models.PROTECT)

    def __str__(self):
        return self.name

class CityAdd(ModelForm):
    class Meta:
        model = City
        fields = ['name', 'country']

class Hospital(models.Model):
    name = models.CharField(max_length=50, null=True)
    address = models.CharField(max_length=50, null=True)
    city = models.ForeignKey(City, on_delete=models.PROTECT)

    def __str__(self):
        return self.name

class HospitalAdd(ModelForm):
    class Meta:
        model = Hospital
        fields = ['name', 'address', 'city']

class Department(models.Model):
    name = models.CharField(max_length=50, null=True)
    hospital = models.ForeignKey(Hospital, on_delete=models.PROTECT)

    def __str__(self):
        return self.name

class DepartmentAdd(ModelForm):
    class Meta:
        model = Department
        fields = ['name', 'hospital']

class ShiftType(models.Model):
    name = models.CharField(max_length=50, null=True, unique=True)
    start_date = models.TimeField(null=True,blank=True)
    end_date = models.TimeField(null=True,blank=True)

    def __str__(self):
        return self.name

class Shift(models.Model):
    shift_id = models.AutoField(primary_key=True)
    shift_name = models.CharField(max_length=255,null=True,blank=True)
    shift_type = models.ForeignKey(ShiftType, on_delete=models.PROTECT)
    start_date = models.DateTimeField(null=True,blank=True)
    end_date = models.DateTimeField(null=True,blank=True)
    staff_name = models.ForeignKey(User, on_delete=models.PROTECT)
    department = models.ForeignKey(Department, on_delete=models.PROTECT)

    def __str__(self):
        return self.shift_name

class ShiftAdd(ModelForm):

    class Meta:
        model = Shift
        fields = ['shift_name', 'start_date', 'shift_type']
        widgets = {
            'start_date': forms.TextInput(attrs={'autocomplete':'off'}),
        }

class ShiftCounter(models.Model):
    date = models.DateTimeField(null=True,blank=True)
    shift_type = models.ForeignKey(ShiftType, on_delete=models.PROTECT)
    counter = models.SmallIntegerField(default=0)
    department = models.ForeignKey(Department, on_delete=models.PROTECT, null=True)

    def __str__(self):
        return str(self.date)

class Exchange(models.Model):
    myshift = models.ForeignKey(Shift, on_delete=models.PROTECT, null=True, related_name="myshift")
    yourshift = models.ForeignKey(Shift, on_delete=models.PROTECT, null=True, related_name="yourshift")
    who = models.ForeignKey(User, on_delete=models.PROTECT, null=True, related_name="who")
    whom = models.ForeignKey(User, on_delete=models.PROTECT, null=True, related_name="whom")
    status = models.SmallIntegerField(default = 0)

    def __str__(self):
        return str(self.status)