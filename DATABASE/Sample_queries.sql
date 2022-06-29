use Uber_demo;

-- 1St
-- driver  whose earings are more than average earings of drivers
select count(*)
from driver d
where d.Earning > (Select avg(Earning) from driver);

-- 2nd 
-- trips that are longer than 200kms as a view
create view long_trips as 
select t.id, t.distance, t.pickup_location, t.drop_location 
from trip t 
where t.distance> 200; 

select * from long_trips;


 
-- 3th
-- trips from any hills
select t.id, t.pickup_location
from trip t
where t.pickup_location like '%Hill%'; 

-- 4th
-- find the fare of the trips which has rating 5 
select t.trip_id, rating, fare
from pass_trip t, payment p
where t.trip_id = p.trip_id and rating = 5;

-- 5th
-- find fare of each driver 
select pt.driver_id, sum(p.fare)
from pass_trip pt, payment p
where pt.trip_id = p.trip_id
group by driver_id;

-- 6th
-- find all the passangers who have travel in a prime ride

select distinct p.Name, p.Phone_Number, v.Vehicle_company
from passenger p, vehicle v, pass_trip pt, drives ds 
where ( v.Prime_ride = 1 and v.vin = ds.vin and ds.Driver_ID = pt.driver_id and p.Phone_Number = pt.phone_number  );

-- 7th
-- show drivers who drives prime cars
select d.Name, d.id,v.Vehicle_company
from driver d, drives ds, vehicle v
where (d.id = ds.Driver_ID and ds.vin = v.vin and v.Prime_ride = 1);

-- 8th
-- top 10 highest paying passanger
select p.Name, p.Email_id, pay.fare
from passenger p, payment pay, pass_trip pt
where (p.phone_number = pt.phone_number and pt.trip_id = pay.trip_id)
order by  pay.fare DESC
limit  10;

-- 9th
-- find passengers who have traveled for the first time and had good expierince

SELECT distinct p.Name, pt.rating
FROM passenger p, pass_trip pt, transections tra, payment pay
WHERE ( p.phone_number = pt.phone_number and pt.rating > 3 and pt.trip_id = pay.trip_id and tra.transection_id = pay.transection_id and tra.coupon = 'PEHLA_SAFAR_50' ); 

-- 10th
-- find eco un friendly vehicles and their drivers
select  d.Name, v.Vehicle_company, v.vin
from vehicle v, driver d, drives ds
where (v.fuel = 'Petrol' and v.vin = ds.vin and ds.driver_id = d.id) 
union
select d.Name, v.Vehicle_company, v.vin
from vehicle v, driver d, drives ds
where (v.fuel = 'Diesel' and v.vin = ds.vin and ds.driver_id = d.id);  

