from django.db import models

# Create your models here.
class Passenger2(models.Model):

    Name = models.CharField(max_length=50)
    Phone_Number = models.CharField(max_length=50, primary_key=True)
    Email_id = models.CharField(max_length=50)
    Age = models.IntegerField()
    Mode_of_payment = models.CharField(max_length=50)

    class Meta:
        db_table = "passenger"  

class Driver2(models.Model):

    id = models.IntegerField(primary_key=True)
    Name = models.CharField(max_length=50)
    Phone_No = models.CharField(max_length=50)
    Aadhaar_Number = models.CharField(max_length=50)
    Age = models.IntegerField()
    Address = models.CharField(max_length=50)
    Experience = models.IntegerField()
    Rating = models.DecimalField(max_digits=2, decimal_places=1)
    Earning = models.CharField(max_length=50)
 
    class Meta:
        db_table = "driver"

class Vehicle2(models.Model):

    vin = models.CharField(max_length=50, primary_key=True)
    Color = models.CharField(max_length=50)
    AC = models.CharField(max_length=50)
    WiFi = models.CharField(max_length=50)
    Model_year = models.CharField(max_length=50)
    Type = models.CharField(max_length=50)
    Vehicle_company = models.CharField(max_length=50)
    Fuel = models.CharField(max_length=50)
    Prime_ride = models.CharField(max_length=50)

    class Meta:
        db_table = "vehicle" 

class Trip2(models.Model):

    id = models.IntegerField(primary_key=True)
    booking_time = models.TimeField()
    pickup_time = models.TimeField()
    waiting_time = models.IntegerField()
    trip_date = models.DateField()
    total_time = models.IntegerField()
    pickup_location = models.CharField(max_length=50)
    drop_location = models.CharField(max_length=50)
    distance = models.DecimalField(max_digits=5, decimal_places=2)

    class Meta:
        db_table = "trip"
 
class Transections2(models.Model):
    transection_id = models.CharField(max_length=50, primary_key=True)
    coupon = models.CharField(max_length=50)
    mode_of_payment = models.CharField(max_length=50)

    class Meta:
        db_table = "transections"

# class Payment2(models.Model):
#     trip_id = models.ForeignKey()
