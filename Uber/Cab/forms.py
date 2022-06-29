from dataclasses import field
from django import forms
from .models import Driver2, Passenger2, Transections2, Trip2, Vehicle2

class PassengerForm(forms.ModelForm):

    class Meta:
        model = Passenger2

        fields= [
            "Name",
            "Phone_Number",
            "Email_id",
            "Age",
            "Mode_of_payment",
        ]
 
class DriverForm(forms.ModelForm):

    class Meta:
        model = Driver2
        
        fields = [
            "id",
            "Name",
            "Phone_No",
            "Aadhaar_Number",
            "Age",
            "Address",
            "Experience",
            "Rating",
            "Earning",
        ]

class VehicleForm(forms.ModelForm):

    class Meta:
        model = Vehicle2

        fields=[
            "vin",
            "Color",
            "AC",
            "WiFi",
            "Model_year",
            "Type",
            "Vehicle_company",
            "Fuel",
            "Prime_ride",
        ]

class TripForm(forms.ModelForm):
    
    class Meta:
        model = Trip2

        fields = [
            "id",
            "booking_time",
            "pickup_time",
            "waiting_time",
            "trip_date",
            "total_time",
            "pickup_location",
            "drop_location",
            "distance",
        ]

class TransectionsForm(forms.ModelForm):

    class Meta:
        model = Transections2

        fields = [
            "transection_id",
            "coupon",
            "mode_of_payment",
        ]