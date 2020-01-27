from django.contrib import admin
from .models import (
    Hospital,
    Department,
    City,
    Country,
    Shift,
    ShiftType,
    ShiftCounter,
    Exchange
)

admin.site.register(Hospital)
admin.site.register(Department)
admin.site.register(City)
admin.site.register(Country)
admin.site.register(Shift)
admin.site.register(ShiftType)
admin.site.register(ShiftCounter)
admin.site.register(Exchange)