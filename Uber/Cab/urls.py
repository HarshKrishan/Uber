from django.urls import URLPattern, path

from . import views

urlpatterns = [
    
    path("", views.index, name="main"),
    path("add_passenger", views.add_passenger, name="add_passenger"),
    path("add_driver", views.add_driver, name="add_driver"),
    path("add_vehicle", views.add_vehicle, name="add_vehicle"),
    path("add_trip", views.add_trip, name="add_trip")   ,
    path("add_transection", views.add_transection, name="add_transection")  ,
    path("secondpage", views.new_main, name="secondpage"),
    path("search_driver", views.search_driver_helper, name="search_driver"),
    path("show_driver", views.show_driver, name="show_driver"),
    path("TakePassAge", views.UpdatePassAge_helper, name="TakePassAge"),
    path("UpdateAge", views.UpdatePassAge, name="UpdateAge"),
    path("RankVeh", views.RankVeh, name="RankVeh"),
    path("UpdateEarnings", views.UpdateEarnings_helper, name="UpdateEarnings"),
    path("DriverEarnings", views.UpdateEarnings, name="DriverEarnings"),
    path("EnterColor", views.ShowVehFiler_helper, name="EnterColor"),
    path("VehicleColor", views.ShowVehFilter, name="VehicleColor") 
]
 