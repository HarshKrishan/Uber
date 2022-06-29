create table Drivers(
	
    Driver_ID INT,
    foreign key(Driver_ID) references Driver(id)
	

);

drop table drivers;

create table Drives(

	Driver_ID INT,
    vin VARCHAR(50),
    foreign key(Driver_ID) references Driver(id),
    foreign key(vin) references vehicle(vin)

);

create table Pass_trip(

	phone_number varchar(50),
    trip_id varchar(50),
    driver_id 

);
