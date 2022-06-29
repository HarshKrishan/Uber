from django.http import HttpResponse
from django.shortcuts import render

from .forms import PassengerForm, DriverForm, VehicleForm, TripForm, TransectionsForm 
from .models import Passenger2, Driver2, Vehicle2, Trip2, Transections2
 
# Create your views here.
# def index(request):
#     return render(request, "Cab/main.html") 

def index(request):
    return render(request, "Cab/index.html") 

def add_passenger(request):

    context = {}
     
    form = PassengerForm(request.POST or None)
    if form.is_valid():
        form.save()
        return render(request, "Cab/index.html")
    context['form'] = form

    return render(request, "Cab/add_passenger.html", context)

def add_driver(request):

    context = {}
     
    form = DriverForm(request.POST or None)
    if form.is_valid():
        form.save()
        return render(request, "Cab/index.html")
    context['form'] = form

    return render(request, "Cab/add_driver.html", context)

def add_vehicle(request):

    context = {}

    form = VehicleForm(request.POST or None)
    if form.is_valid():
        form.save()
        return render(request, "Cab/index.html")
    context['form'] = form

    return render(request, "Cab/add_vehicle.html", context)

def add_trip(request):

    context = {}

    form = TripForm(request.POST or None)
    if form.is_valid():
        form.save()
        return render(request, "Cab/index.html")
    context['form'] = form

    return render(request, "Cab/add_trip.html",context) 

def add_transection(request):

    context = {}

    form = TransectionsForm(request.POST or None)
    if form.is_valid():
        form.save()
        return render(request, "Cab/index.html")
    context['form'] = form

    return render(request, "Cab/add_transection.html", context)

def new_main(request):
    return render(request, "Cab/secondpage.html")

def search_driver_helper(request):
    return render(request, "Cab/search_driver.html") 

def show_driver(request):
    
    if request.method =="POST":    
        Name = request.POST.get('Driver_name')

        context = {}

        context["dataset"] = Driver2.objects.raw("SELECT * FROM driver where Name = %s ", [Name])
        # return HttpResponse(Name) 
        return render(request, "Cab/show_driver.html", context) 

def UpdatePassAge_helper(request):
    return render(request, "Cab/TakePassAge.html") 

def UpdatePassAge(request):

    if request.method == "POST":
        Passenger_Phone = request.POST.get('Passenger_Phone')
        Passenger_Age = request.POST.get('Passenger_Age')


    # resultsdisplay = VehicleDetails.objects.filter(color = clr) 
        resultsdisplay = Passenger2.objects.raw('SELECT * FROM PASSENGER WHERE Phone_Number=%s', [Passenger_Phone])
        result = resultsdisplay[0]
        result.Age = Passenger_Age
        result.save()
        return render(request, "Cab/UpdateAge.html", {
            'PassengerDetails': resultsdisplay,
            'phone': Passenger_Phone
        })

def RankVeh(request):
    resultsdisplay = Vehicle2.objects.raw('select vin, Model_year, Vehicle_company, rank() over (partition by vin order by Model_year desc) as Top_model from Vehicle order by Model_year')
    return render(request, "Cab/RankVeh.html", {
        'RankVehDetails': resultsdisplay
    })

def UpdateEarnings_helper(request):
    return render(request, "Cab/UpdateEarnings.html")  

def UpdateEarnings(request): 

    if request.method == "POST":
        yr = request.POST.get("Years")

        resultsdisplay = Driver2.objects.raw('SELECT id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning FROM Driver WHERE Experience>=%s', [yr])
        print(resultsdisplay)
        for result in resultsdisplay:
            result.Earning += 20000
            result.save() 
        return render(request, "Cab/DriverEarnings.html", {
            'DriverDetails': resultsdisplay
        })

def ShowVehFiler_helper(request):
    return render(request, "Cab/EnterColor.html")

def ShowVehFilter(request):

    if request.method == "POST":
        Color = request.POST.get("Color")

        resultsdisplay = Vehicle2.objects.raw('SELECT * FROM VEHICLE WHERE COLOR=%s', [Color])
        return render(request, "Cab/VehicleColor.html", {
            'VehicleDetails': resultsdisplay,
            'colour': Color
        })