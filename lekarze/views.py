import time
from datetime import datetime, timedelta
import re

from django.shortcuts import(
    HttpResponse,
    get_object_or_404,
    redirect,
    render
)
from django.views.generic.base import TemplateView
from django.core.paginator import(
    Paginator,
    EmptyPage,
    PageNotAnInteger
)
from django.db.models import Q, ProtectedError, F
from django.core.mail import send_mail
from django.conf import settings
from django.contrib.auth.models import User
from django.core.exceptions import ValidationError
from django.contrib.auth import login, authenticate
from django.contrib.auth.forms import UserCreationForm

from .models import(
    StaffAdd,
    CountryAdd,
    CityAdd,
    Hospital,
    HospitalAdd,
    Department,
    DepartmentAdd,
    Shift,
    ShiftAdd,
    ShiftCounter,
    Exchange
)
class IndexView(TemplateView):
    template_name = 'index.html'

def logout(request):
    logout(request)
    return redirect('home')

def staff_add(request):
    if request.user.is_superuser:
        if request.method == 'POST':
            form = StaffAdd(request.POST)
            if form.is_valid():
                try:
                    form.save()
                    return redirect('lekarze:stafflist')
                except Exception as exception:
                    error = "Something went wrong. If error occurs often please send error message contained below to administator."
                    error_message = str(exception)
                    return render(request, 'error.html', {'em':error_message, 'e':error})
        else:
            form = StaffAdd()
        return render(request, 'staff_add.html', {'form':form})            
    return redirect('lekarze:stafflist')

def staff_list(request):
    try:
        staff_list = User.objects.filter(Q(is_staff__icontains=False))
        page = request.GET.get('page', 1)

        paginator = Paginator(staff_list, 5)
        try:
            staff = paginator.page(page)
        except PageNotAnInteger:
            staff = paginator.page(1)
        except EmptyPage:
            staff = paginator.page(paginator.num_pages)

        return render(request, 'staff_list.html', { 'staff': staff })
    except Exception as exception:
        error = "Something went wrong. If error occurs often please send error message contained below to administator."
        error_message = str(exception)
        return render(request, 'error.html', {'em':error_message, 'e':error})    

def staff_delete(request, pk):
    if request.user.is_superuser:
        try:
            user_id = pk
            user = User.objects.get(id = user_id)
            user.delete()
            return redirect('lekarze:stafflist')
        except Exception as exception:
            error = "Something went wrong. If error occurs often please send error message contained below to administator."
            error_message = str(exception)
            return render(request, 'error.html', {'em':error_message, 'e':error})

def country_add(request):
    if request.user.is_superuser:
        if request.method == 'POST':
            form = CountryAdd(request.POST)
            if form.is_valid():
                try:
                    form.name = form.cleaned_data['name']
                    form.save()
                    return redirect('home')
                except Exception as exception:
                    error = "Something went wrong. If error occurs often please send error message contained below to administator."
                    error_message = str(exception)
                    return render(request, 'error.html', {'em':error_message, 'e':error})
        else:
            form = CountryAdd()
        return render(request, 'country_add.html', {'form':form})            
    return redirect('home')

def city_add(request):
    if request.user.is_superuser:
        if request.method == 'POST':
            form = CityAdd(request.POST)
            if form.is_valid():
                try:
                    form.name = form.cleaned_data['name']
                    form.country = form.cleaned_data['country']
                    form.save()
                    return redirect('home')
                except Exception as exception:
                    error = "Something went wrong. If error occurs often please send error message contained below to administator."
                    error_message = str(exception)
                    return render(request, 'error.html', {'em':error_message, 'e':error})
        else:
            form = CityAdd()
        return render(request, 'city_add.html', {'form':form})            
    return redirect('home')

def hospital_add(request):
    if request.user.is_superuser:
        if request.method == 'POST':
            form = HospitalAdd(request.POST)
            if form.is_valid():
                try:
                    form.name = form.cleaned_data['name']
                    form.address = form.cleaned_data['address']
                    form.city = form.cleaned_data['city']
                    form.save()
                    return redirect('lekarze:hospitallist')
                except Exception as exception:
                    error = "Something went wrong. If error occurs often please send error message contained below to administator."
                    error_message = str(exception)
                    return render(request, 'error.html', {'em':error_message, 'e':error})
        else:
            form = HospitalAdd()
        return render(request, 'hospital_add.html', {'form':form})            
    return redirect('lekarze:hospitallist')

def hospital_list(request):
    try:
        hospital_list = Hospital.objects.all()
        page = request.GET.get('page', 1)

        paginator = Paginator(hospital_list, 5)
        try:
            hospitals = paginator.page(page)
        except PageNotAnInteger:
            hospitals = paginator.page(1)
        except EmptyPage:
            hospitals = paginator.page(paginator.num_pages)

        return render(request, 'hospital_list.html', { 'hospitals': hospitals })
    except Exception as exception:
        error = "Something went wrong. If error occurs often please send error message contained below to administator."
        error_message = str(exception)
        return render(request, 'error.html', {'em':error_message, 'e':error})    

def hospital_delete(request, pk):
    if request.user.is_superuser:
        try:
            hospital_id = pk
            hospital = Hospital.objects.get(id = hospital_id)
            hospital.delete()
            return redirect('lekarze:hospitallist')
        except ProtectedError:
            error = 'You cannot do this.'
            error_message = 'You are trying to delete hospital that still has some departments. Please remove departments first.'
            return render(request, 'error.html', {'em':error_message, 'e':error})
        except Exception as exception:
            error = "Something went wrong. If error occurs often please send error message contained below to administator."
            error_message = str(exception)
            return render(request, 'error.html', {'em':error_message, 'e':error})

def department_add(request):
    if request.user.is_superuser:
        if request.method == 'POST':
            form = DepartmentAdd(request.POST)
            if form.is_valid():
                try:
                    form.name = form.cleaned_data['name']
                    form.hospital = form.cleaned_data['hospital']
                    form.save()
                    return redirect('lekarze:departmentlist')
                except Exception as exception:
                        error = "Something went wrong. If error occurs often please send error message contained below to administator."
                        error_message = str(exception)
                        return render(request, 'error.html', {'em':error_message, 'e':error})
        else:
            form = DepartmentAdd()
        return render(request, 'department_add.html', {'form':form})            
    return redirect('lekarze:departmentlist')

def department_list(request):
    try:
        department_list = Department.objects.all()
        page = request.GET.get('page', 1)

        paginator = Paginator(department_list, 5)
        try:
            departments = paginator.page(page)
        except PageNotAnInteger:
            departments = paginator.page(1)
        except EmptyPage:
            departments = paginator.page(paginator.num_pages)

        return render(request, 'department_list.html', { 'departments': departments })
    except Exception as exception:
        error = "Something went wrong. If error occurs often please send error message contained below to administator."
        error_message = str(exception)
        return render(request, 'error.html', {'em':error_message, 'e':error})    

def department_delete(request, pk):
    if request.user.is_superuser:
        try:
            department_id = pk
            department = Department.objects.get(id = department_id)
            department.delete()
            return redirect('lekarze:departmentlist')
        except Exception as exception:
            error = "Something went wrong. If error occurs often please send error message contained below to administator."
            error_message = str(exception)
            return render(request, 'error.html', {'em':error_message, 'e':error})

def shift_calendar(request):
    try:
        all_shifts = Shift.objects.all()
        context = {
            "shifts":all_shifts,
        }
        return render(request,'shift_calendar.html',context)
    except Exception as exception:
        error = "Something went wrong. If error occurs often please send error message contained below to administator."
        error_message = str(exception)
        return render(request, 'error.html', {'em':error_message, 'e':error})    

def shift_list(request):
    try:
        department_list = Department.objects.all()
        page = request.GET.get('page', 1)

        paginator = Paginator(department_list, 5)
        try:
            departments = paginator.page(page)
        except PageNotAnInteger:
            departments = paginator.page(1)
        except EmptyPage:
            departments = paginator.page(paginator.num_pages)

        return render(request, 'shift_list.html', { 'departments': departments })
    except Exception as exception:
        error = "Something went wrong. If error occurs often please send error message contained below to administator."
        error_message = str(exception)
        return render(request, 'error.html', {'em':error_message, 'e':error})    

def shift_add(request, pk):
    if request.user.is_authenticated:
        if request.method == 'POST':
            form = ShiftAdd(request.POST)
            if form.is_valid():
                department = Department.objects.get(id = pk)
                start_date = form.cleaned_data['start_date']
                shift_type = form.cleaned_data['shift_type']

                time_check = start_date.time()
                if (time_check.hour != 7 or time_check.hour != 19) and time_check.minute != 0:
                    e = "Wrong statring shift time."
                    form = ShiftAdd()
                    return render(request, 'shift_add.html', {'e':e, 'form':form})  

                staff = User.objects.get(username=request.user)
                try:
                    shift_check = Shift.objects.get(start_date = start_date, staff_name = staff.id)
                    e = "You are already registered for this shift or you have same shift type in another hospital or/and department."
                    form = ShiftAdd()
                    return render(request, 'shift_add.html', {'e':e, 'form':form})  
                except:
                    ShiftCounter.objects.get_or_create(date = start_date, shift_type = shift_type, department = department)
                    shift_counter = ShiftCounter.objects.get(date = start_date, shift_type = shift_type)
                    if shift_counter.counter >= 5:
                        e = "There is too many shifts on that date. Change date, its duration or exchange that shift with someone else."
                        form = ShiftAdd()
                        return render(request, 'shift_add.html', {'e':e, 'form':form})  

                    end_date = ''
                    obj = form.save(commit=False)
                    str_shift_type = str(form.cleaned_data['shift_type'])
                    spaces = re.findall("\s*",str_shift_type)
                    for removespaces in spaces:
                        str_shift_type = str_shift_type.replace(removespaces, '') 
                    if str_shift_type == '7:00am-7:00am(24h)':
                        end_date = start_date + timedelta(hours=24)
                    elif str_shift_type == '7:00pm-7:00am(12h)':
                        end_date = start_date + timedelta(hours=12)
                    elif str_shift_type == '7:00am-7:00pm(12h)':
                        end_date = start_date + timedelta(hours=12)
                    obj.shift_name = form.cleaned_data['shift_name']
                    obj.shift_type = shift_type
                    obj.start_date = start_date
                    obj.end_date = end_date
                    obj.staff_name_id = staff.id
                    obj.department = department
                    obj.save()
                    ShiftCounter.objects.filter(date = start_date, shift_type = shift_type, department = department).update(counter = F('counter')+1)
                    return redirect('lekarze:shiftcalendar')
        else:
            form = ShiftAdd()
        return render(request, 'shift_add.html', {'form':form})            
    return redirect('lekarze:shiftcalendar')

def exchange_page(request):
    if request.user.is_authenticated:
        return render(request, 'exchange_page.html')
    return redirect('home')

def exchange_list(request):
    if request.user.is_authenticated:
        try:
            shift_list = Shift.objects.exclude(staff_name = request.user)
            page = request.GET.get('page', 1)

            paginator = Paginator(shift_list, 5)
            try:
                shifts = paginator.page(page)
            except PageNotAnInteger:
                shifts = paginator.page(1)
            except EmptyPage:
                shifts = paginator.page(paginator.num_pages)

            return render(request, 'exchange_list.html', { 'shifts': shifts })
        except Exception as exception:
            error = "Something went wrong. If error occurs often please send error message contained below to administator."
            error_message = str(exception)
            return render(request, 'error.html', {'em':error_message, 'e':error})    

def exchange_add(request, pk):
    if request.user.is_authenticated:
        try:
            yourshift = Shift.objects.get(shift_id = pk)
            myshifts = Shift.objects.filter(staff_name = request.user)
            return render(request, 'exchange_add.html', { 'yourshift': yourshift, 'myshifts': myshifts })
        except Exception as exception:
            error = "Something went wrong. If error occurs often please send error message contained below to administator."
            error_message = str(exception)
            return render(request, 'error.html', {'em':error_message, 'e':error})    

def exchange_adding(request):
    if request.user.is_authenticated:
        try:
            if request.method == 'POST':
                data = request.POST.copy()
                myshift_id = data.get('myshift')
                yourshift_id = data.get('yourshift')
                owner_name = data.get('owner')
                requester = request.user
                myshift = Shift.objects.get(shift_id=myshift_id)
                yourshift = Shift.objects.get(shift_id=yourshift_id)
                owner = User.objects.get(username=owner_name)
                user = User.objects.get(username=requester)
                exchange = Exchange(myshift=myshift,yourshift=yourshift,who=user,whom=owner)
                exchange.save()
                return redirect('lekarze:exchangelist')     
        except Exception as exception:
            error = "Something went wrong. If error occurs often please send error message contained below to administator."
            error_message = str(exception)
            return render(request, 'error.html', {'em':error_message, 'e':error})    

def exchange_myproposes(request):
    if request.user.is_authenticated:
        try:
            shift_list = Exchange.objects.filter(who = request.user)
            page = request.GET.get('page', 1)

            paginator = Paginator(shift_list, 5)
            try:
                shifts = paginator.page(page)
            except PageNotAnInteger:
                shifts = paginator.page(1)
            except EmptyPage:
                shifts = paginator.page(paginator.num_pages)

            return render(request, 'exchange_myproposes.html', { 'shifts': shifts })
        except Exception as exception:
            error = "Something went wrong. If error occurs often please send error message contained below to administator."
            error_message = str(exception)
            return render(request, 'error.html', {'em':error_message, 'e':error})   

def exchange_yourproposes(request):
    if request.user.is_authenticated:
        try:
            shift_list = Exchange.objects.filter(whom = request.user, status=0)
            page = request.GET.get('page', 1)

            paginator = Paginator(shift_list, 5)
            try:
                shifts = paginator.page(page)
            except PageNotAnInteger:
                shifts = paginator.page(1)
            except EmptyPage:
                shifts = paginator.page(paginator.num_pages)

            return render(request, 'exchange_yourproposes.html', { 'shifts': shifts })
        except Exception as exception:
            error = "Something went wrong. If error occurs often please send error message contained below to administator."
            error_message = str(exception)
            return render(request, 'error.html', {'em':error_message, 'e':error})   

def exchange_accept(request, pk):
    if request.user.is_authenticated:
        try:
            exchange = Exchange.objects.get(id = pk)
            shift1 = Shift.objects.get(shift_id = exchange.yourshift.shift_id)
            shift2 = Shift.objects.get(shift_id = exchange.myshift.shift_id)
            shift1.staff_name = exchange.who
            shift2.staff_name = exchange.whom
            exchange.status = 2
            shift1.save()
            shift2.save()
            exchange.save()
            return redirect('lekarze:exchangeyourproposes')
        except Exception as exception:
            error = "Something went wrong. If error occurs often please send error message contained below to administator."
            error_message = str(exception)
            return render(request, 'error.html', {'em':error_message, 'e':error})   

def exchange_refuse(request, pk):
    if request.user.is_authenticated:
        try:
            exchange = Exchange.objects.get(id = pk)
            exchange.status = 1
            exchange.save()
            return redirect('lekarze:exchangeyourproposes')
        except Exception as exception:
            error = "Something went wrong. If error occurs often please send error message contained below to administator."
            error_message = str(exception)
            return render(request, 'error.html', {'em':error_message, 'e':error})   