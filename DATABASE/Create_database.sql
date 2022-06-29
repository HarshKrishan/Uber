create database Uber_demo;
use Uber_demo;



-- drop table drives;
-- drop table drives;
-- drop table pass_trip;
-- drop table payment;
create table Passenger (
	Name VARCHAR(50) not null,
	Phone_Number VARCHAR(50),
	Email_id VARCHAR(50) not null unique,
	Age INT, 
	Mode_of_payment VARCHAR(50) default 'CASH',
    primary key(Phone_Number)
);
create table Transections (
	 transection_id VARCHAR(50),
	primary key(transection_id),
    coupon VARCHAR(50),
	mode_of_payment VARCHAR(50) default 'CASH'
);

create table Vehicle (
	vin VARCHAR(50),
	Color VARCHAR(50) not null,
	AC VARCHAR(50),
	WiFi VARCHAR(50),
	Model_year VARCHAR(50) not null,
	Type VARCHAR(50) not null,
	Vehicle_company VARCHAR(50) not null,
	Fuel VARCHAR(50) not null,
	Prime_ride VARCHAR(50) not null,
    primary key (vin)
);

create table trip (
	id INT,
	primary key(id),
	booking_time time ,
	pickup_time time ,
	waiting_time INT ,
	trip_date DATE ,
	total_time INT , 
	pickup_location VARCHAR(50) ,
	drop_location VARCHAR(50) ,
	distance DECIMAL(5,2) ,
    
    check(pickup_time > booking_time)
);

create table Driver (
	id INT,
    primary key(id),
	Name VARCHAR(50),
	Phone_No VARCHAR(50),
	Aadhaar_Number VARCHAR(50),
	Age INT,
	Address VARCHAR(50),
	Experience INT,
	Rating DECIMAL(2,1),
	Earning DECIMAL(8,2)
);



create table Drives(

	
    vin VARCHAR(50) ,
    Driver_ID INT,
    foreign key(vin) references vehicle(vin),
    foreign key(Driver_ID) references Driver(id),
    
	primary key(vin, Driver_ID)
);



create table Payment(

	trip_id int,
    transection_id varchar(50),
    Fare int,
    foreign key(trip_id) references trip(id),
    foreign key(transection_id) references transections(transection_id),
	primary key(trip_id, transection_id)
);

-- Passenger done
-- Vehicle done
-- Transections done
-- Trip done

create table Pass_trip(

	phone_number varchar(50),
    trip_id int,
    driver_id int,
    foreign key(phone_number) references passenger(Phone_number),
    foreign key(trip_id) references trip(id),
    foreign key(driver_id) references driver(id),
    rating int ,
    primary key(phone_number, trip_id, driver_id)

);

/*
create table Drives(

	Driver_ID INT,
    vin VARCHAR(50),
    foreign key(Driver_ID) references Driver(id),
    foreign key(vin) references vehicle(vin),
	primary key(driver_id, vin)
    
);
*/



/*
INSERT INTO drives (Driver_ID, vin) VALUES ('1', '19UUA56942A008828');
INSERT INTO drives (Driver_ID, vin) VALUES ('2', '19UUA66265A479053');
INSERT INTO drives (Driver_ID, vin) VALUES ('3', '19UYA42773A171863');
INSERT INTO drives (Driver_ID, vin) VALUES ('4', '1B3CB3HA4AD185798');
INSERT INTO drives (Driver_ID, vin) VALUES ('5', '1D7CW3BK7AS183212');
INSERT INTO drives (Driver_ID, vin) Values ('6', '1D7CW3GK7AS488881');
INSERT INTO drives (Driver_ID, vin) VALUES ('7', '1FMJK1F51AE586762');
INSERT INTO drives (Driver_ID, vin) VALUES ('8', '1FTSW3A51AE020827');
INSERT INTO drives (Driver_ID, vin) VALUES ('9', '1G6DF577180732281');
INSERT INTO drives (Driver_ID, vin) VALUES ('10', '1G6DJ8EY8B0750599');
INSERT INTO drives (Driver_ID, vin) VALUES ('11', '1G6DL8E34C0285318');
INSERT INTO drives (Driver_ID, vin) VALUES ('12', '1G6DV5EP2E0061608');
INSERT INTO drives (Driver_ID, vin) VALUES ('13', '1GD02ZCG9DZ976976');
INSERT INTO drives (Driver_ID, vin) VALUES ('14', '1GKS1HE02BR401307');
INSERT INTO drives (Driver_ID, vin) VALUES ('15', '1GTN1TEX2DZ101911');
INSERT INTO drives (Driver_ID, vin) VALUES ('16', '1GYFC36239R844774');
INSERT INTO drives (Driver_ID, vin) VALUES ('17', '1GYS4KEF5ER135638');
INSERT INTO drives (Driver_ID, vin) VALUES ('18', '1HGCR2E78EA746980');
INSERT INTO drives (Driver_ID, vin) VALUES ('19', '3D7TP2CT4BG863463');
INSERT INTO drives (Driver_ID, vin) VALUES ('20', '3GTXKYEJ3AG848329');
INSERT INTO drives (Driver_ID, vin) VALUES ('21', '3GYEK63N03G441292');
INSERT INTO drives (Driver_ID, vin) VALUES ('22', '3GYFNCEYXBS573179');
INSERT INTO drives (Driver_ID, vin) VALUES ('23', '5LMJJ3H58BE392677');
INSERT INTO drives (Driver_ID, vin) VALUES ('24', 'JN1CV6AP6CM827031');
INSERT INTO drives (Driver_ID, vin) VALUES ('25', 'JTEBU4BF4DK493192');
INSERT INTO drives (Driver_ID, vin) VALUES ('26', 'JTJBM7FX6C5376121');
INSERT INTO drives (Driver_ID, vin) VALUES ('27', 'SALSF2D42AA826143');
INSERT INTO drives (Driver_ID, vin) VALUES ('28', 'TRUVD38J791101767');
INSERT INTO drives (Driver_ID, vin) VALUES ('29', 'TRUWT28N321153231');
INSERT INTO drives (Driver_ID, vin) VALUES ('30', 'WA1CV94L37D377149');
INSERT INTO drives (Driver_ID, vin) VALUES ('31', 'WA1DGAFP5DA072152');
INSERT INTO drives (Driver_ID, vin) VALUES ('32', 'WA1YD64B63N753278');
INSERT INTO drives (Driver_ID, vin) VALUES ('33', 'WAUAFAFC3CN279541');
INSERT INTO drives (Driver_ID, vin) VALUES ('34', 'WAUD2AFD6DN711932');
INSERT INTO drives (Driver_ID, vin) VALUES ('35', 'WAUKF98E95A803383');
INSERT INTO drives (Driver_ID, vin) VALUES ('36', 'WAULV44E87N991891');
INSERT INTO drives (Driver_ID, vin) VALUES ('37', 'WAUVC68E72A904230');
INSERT INTO drives (Driver_ID, vin) VALUES ('38', 'WAUVFAFH7DN980307');
INSERT INTO drives (Driver_ID, vin) VALUES ('39', 'WBA3A5C53EJ184377');
INSERT INTO drives (Driver_ID, vin) VALUES ('40', 'WBA3B3G51DN388923');
INSERT INTO drives (Driver_ID, vin) VALUES ('41', 'WBA3D5C52FK349337');
INSERT INTO drives (Driver_ID, vin) VALUES ('42', 'WBAPL5C58BA283106');
INSERT INTO drives (Driver_ID, vin) VALUES ('43', 'WBS3U9C57FJ616402');
INSERT INTO drives (Driver_ID, vin) VALUES ('44', 'WBSCL93401L402164');
INSERT INTO drives (Driver_ID, vin) VALUES ('45', 'WBSKG9C51BE638594');
INSERT INTO drives (Driver_ID, vin) VALUES ('46', 'WDDEJ7KBXBA853714');
INSERT INTO drives (Driver_ID, vin) VALUES ('47', 'WDDGF4HB9EG436179');
INSERT INTO drives (Driver_ID, vin) VALUES ('48', 'WDDUG7GB9FA490945');
INSERT INTO drives (Driver_ID, vin) VALUES ('49', 'WP0AA2A97DS371015');
INSERT INTO drives (Driver_ID, vin) VALUES ('50', 'WVGEF9BP9FD668881');
*/

-- drop table Pass_trip;




-- drop table payment;

-- drop table Trip;
-- create table Trip (
-- 	id INT,
--     
-- 	booking_time time,
-- 	 
-- 	pickup_time time ,
--     waiting_time INT ,
--     check(Time(waiting_time) >= Time(booking_time)),
--     check(Time(pickup_time) >= Time(waiting_time)),
-- 	trip_date DATE not null,
-- 	total_time DECIMAL(4,2) not null, 
-- 	pickup_location VARCHAR(50) not null,
-- 	drop_location VARCHAR(50) not null,
-- 	distance DECIMAL(5,2) not null,
--     
--     primary key (id)
--     
-- );


insert into Transections (transection_id, coupon, mode_of_payment) values ('z8gbwkten665', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('g3ua06i43isc', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('it3lt3wufgrb', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('rorx7r53awwc', 'PEHLA_SAFAR_50', 'Card');
insert into Transections (transection_id, coupon, mode_of_payment) values ('ab3o2zymwobf', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('9qktcuz8dqp9', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('8mwv5yjsyofz', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('zmwfmculxi45', 'PEHLA_SAFAR_50', 'Card');
insert into Transections (transection_id, coupon, mode_of_payment) values ('l6rpc8w37214', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('ny5e9pninyo9', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('j231sb7rst8t', 'PEHLA_SAFAR_50', 'Card');
insert into Transections (transection_id, coupon, mode_of_payment) values ('pcmfy0c2dp9m', 'PEHLA_SAFAR_50', 'Card');
insert into Transections (transection_id, coupon, mode_of_payment) values ('xg2tlodnijc3', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('zkdjl2cmk4zl', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('q9zx2ak3ml0w', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('v024ewrq8piq', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('v21vzp77hmq7', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('i1kadm8rv8mb', 'PEHLA_SAFAR_50', 'Card');
insert into Transections (transection_id, coupon, mode_of_payment) values ('m5rorxmkbxqw', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('wxphxwmaduga', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('1r4t2bsbypkh', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('4185pgyuhmla', 'PEHLA_SAFAR_50', 'Card');
insert into Transections (transection_id, coupon, mode_of_payment) values ('kn23to6e8kna', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('elzlpouam0yb', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('bfg6dji64mqw', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('lkhn5zso0v4b', 'PEHLA_SAFAR_50', 'Card');
insert into Transections (transection_id, coupon, mode_of_payment) values ('x64x26hj70ke', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('pesv7mk0bhqa', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('zfrkhzpj7cri', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('smurgzlmav60', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('uibvrk12fqrr', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('idtc83ymr8rj', 'PEHLA_SAFAR_50', 'Card');
insert into Transections (transection_id, coupon, mode_of_payment) values ('n47zu0bgsywh', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('z5eh2vtqwhzz', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('anrqhd6soeue', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('g5bfq5xwvn8j', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('c4m9kmzckifo', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('lf3fa7ysro4y', 'PEHLA_SAFAR_50', 'Card');
insert into Transections (transection_id, coupon, mode_of_payment) values ('xp5mczgcafe3', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('8iaeonn65ock', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('f9k9qxym4ku1', 'PEHLA_SAFAR_50', 'Card');
insert into Transections (transection_id, coupon, mode_of_payment) values ('udeywaw2rs75', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('ns53x9l550hf', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('vbptwyb5of97', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('gwe79su9li24', 'PEHLA_SAFAR_50', 'UPI');
insert into Transections (transection_id, coupon, mode_of_payment) values ('7wv3w7cohpgw', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('0avpi0qpc5bi', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('5gk7k6o82rnj', 'PEHLA_SAFAR_50', 'Card');
insert into Transections (transection_id, coupon, mode_of_payment) values ('f9qmb1znibt7', null, 'Cash');
insert into Transections (transection_id, coupon, mode_of_payment) values ('hqcu3f1qkvcn', null, 'Cash');
/*
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL31JV3890 ', 'Pink', true, true, 2007, 'Auto', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL37MN0195 ', 'Purple', true, true, 2006, 'Car', 'Bajaj', 'Petrol', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL18RW4812 ', 'Khaki', true, false, 2005, 'Car', 'Bajaj', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL98CW7906 ', 'Indigo', true, true, 2008, 'Car', 'Bajaj', 'Diesel', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL78WL7240 ', 'Turquoise', true, false, 2011, 'Auto', 'Bajaj', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL19EA3145 ', 'Mauv', true, false, 2015, 'Car', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL16WX0813 ', 'Khaki', false, false, 2020, 'Car', 'Bajaj', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL64SG3192 ', 'Aquamarine', false, false, 2015, 'Car', 'Bajaj-Benz', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL77KE8690 ', 'Crimson', false, true, 2005, 'Car', 'Bajaj', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL45AP6552 ', 'Goldenrod', false, true, 2007, 'Car', 'Bajaj', 'Petrol', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL65LL4781 ', 'Indigo', false, false, 2009, 'Car', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL85LM4824 ', 'Fuscia', true, true, 2017, 'Car', 'Bajaj', 'Diesel', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL76YM2685 ', 'Blue', false, true, 2009, 'Car', 'Bajaj', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL08QW6551 ', 'Blue', false, true, 2012, 'Auto', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL51EM8807 ', 'Mauv', true, true, 2019, 'Car', 'Bajaj', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL57RN2028 ', 'Yellow', true, false, 2021, 'Car', 'Bajaj', 'Petrol', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL52ZX4382 ', 'Mauv', false, true, 2019, 'Auto', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL63RK9978 ', 'Goldenrod', true, true, 2009, 'Car', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL42RT0143 ', 'Orange', false, true, 2005, 'Car', 'Bajaj', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL55OO0588 ', 'Maroon', false, false, 2013, 'Auto', 'Bajaj', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL11TF4407 ', 'Teal', true, true, 2017, 'Auto', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL86JB1813 ', 'Violet', false, false, 2013, 'Car', 'Bajaj', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL10RS1272 ', 'Green', false, true, 2009, 'Car', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL60YI9379 ', 'Green', true, false, 2005, 'Car', 'Bajaj', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL40CC7138 ', 'Teal', false, true, 2018, 'Car', 'Bajaj', 'Diesel', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL38MP0944 ', 'Orange', false, false,2019 , 'Car', 'Bajaj', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL51GX1114 ', 'Yellow', false, false, 2012, 'Car', 'Bajaj', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL16EQ6966 ', 'Maroon', true, false, 2006, 'Auto', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL02NW1260 ', 'Maroon', true, false, 2005, 'Car', 'Bajaj', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL60MY7723 ', 'Violet', false, false, 2005, 'Car', 'Bajaj', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL09DM6004 ', 'Aquamarine', false, true, 2009, 'Car', 'Bajaj', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL13LP8357 ', 'Red', false, true, 2017, 'Auto', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL66UY7249 ', 'Violet', true, false, 2011, 'Bike', 'Bajaj', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL52AE8696 ', 'Aquamarine', false, false, 2012, 'Car', 'Bajaj', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL44OB5390 ', 'Mauv', false, false, 2008, 'Car', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL05ZS9449 ', 'Mauv', true, true, 2014, 'Bike', 'Bajaj', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL23XT3710 ', 'Indigo', false, false, 2014, 'Car', 'Bajaj', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL93YR4729 ', 'Fuscia', false, false, 2019, 'Car', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL41QQ7253 ', 'Pink', false, true, 2020, 'Car', 'Bajaj', 'Petrol', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL72CZ8551 ', 'Goldenrod', true, false, 2008, 'Car', 'Bajaj', 'Diesel', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL49UF0768 ', 'Blue', false, false, 2010, 'Car', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL69WC7583 ', 'Puce', false, false, 2012, 'Car', 'Bajaj', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL29QF4363 ', 'Mauv', true, true, 2009, 'Car', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL85WU1758 ', 'Purple', true, false, 2017, 'Car', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL80PQ2395 ', 'Mauv', false, false, 2006, 'Car', 'Bajaj', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL32PV0811 ', 'Yellow', false, false, 2008, 'Bike', 'Bajaj', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL25RB7703 ', 'Turquoise', true, false, 2019, 'Car', 'Bajaj', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL91JE1944 ', 'Yellow', true, true, 2014, 'Car', 'Bajaj', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL62EI1466 ', 'Violet', false, false, 2013, 'Car', 'Bajaj', 'Diesel', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL08YC4858 ', 'Blue', true, true, 2012, 'Car', 'Bajaj', 'Diesel', false);
*/
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL31JV3890', 'Pink', true, true, 2016, 'Car', 'Toyota', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL37MN0195', 'Purple', true, true, 2012, 'Car', 'Chevrolet', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL18RW4812', 'Khaki', false, false, 2014, 'Bike', 'BMW', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL98CW7906', 'Indigo', true, true, 2013, 'Car', 'Porsche', 'Diesel', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL78WL7240', 'Turquoise', false, false, 2011, 'Bike', 'Honda', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL19EA3145', 'Mauv', true, false, 2009, 'Car', 'BMW', 'Petrol', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL16WX0813', 'Khaki', false, false, 2008, 'Car', 'Mazda', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL64SG3192', 'Aquamarine', false, false, 2007, 'Car', 'Mercedes-Benz', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL77KE8690', 'Crimson', false, true, 2009, 'Car', 'Dodge', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL45AP6552', 'Goldenrod', false, true, 2008, 'Car', 'Mercedes-Benz', 'Petrol', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL65LL4781', 'Indigo', false, false, 2009, 'Car', 'Aston Martin', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL85LM4824', 'Fuscia', true, true, 2017, 'Car', 'Porsche', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL76YM2685', 'Blue', false, false, 2016, 'Bike', 'Hero', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL08QW6551', 'Blue', false, true, 2019, 'Car', 'Ford', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL51EM8807', 'Mauv', true, true, 2016, 'Car', 'Audi', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL57RN2028', 'Yellow', false, false, 2018, 'Auto', 'Bajaj', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL52ZX4382', 'Mauv', false, true, 2009, 'Car', 'Nissan', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL63RK9978', 'Goldenrod', false, false, 2013, 'Bike', 'Honda', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL42RT0143', 'Orange', false, false, 2015, 'Bike', 'Yamaha', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL55OO0588', 'Maroon', false, false, 2019, 'Car', 'Ford', 'Diesel', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL11TF4407', 'Teal', true, true, 2017, 'Car', 'Plymouth', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL86JB1813', 'Violet', false, false, 2011, 'Auto', 'Bajaj', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL10RS1272', 'Green', false, true, 2019, 'Car', 'Chevrolet', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL60YI9379', 'Green', true, false, 2020, 'Car', 'Ford', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL40CC7138', 'Teal', false, true, 2022, 'Car', 'Infiniti', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL38MP0944', 'Orange', false, false, 2011, 'Car', 'BMW', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL51GX1114', 'Yellow', false, false, 2012, 'Auto', 'Bajaj', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL16EQ6966', 'Maroon', true, false, 2016, 'Car', 'Hyundai', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL02NW1260', 'Maroon', true, false, 2015, 'Car', 'Toyota', 'Diesel', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL60MY7723', 'Violet', false, false, 2015, 'Car', 'Mercedes-Benz', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL09DM6004', 'Aquamarine', false, true, 2019, 'Car', 'Mitsubishi', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL13LP8357', 'Red', false, true, 2018, 'Car', 'Plymouth', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL66UY7249', 'Violet', true, false, 2011, 'Car', 'Mercedes-Benz', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL52AE8696', 'Aquamarine', false, false, 2017, 'Car', 'Toyota', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL44OB5390', 'Mauv', false, false, 2008, 'Car', 'Kia', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL05ZS9449', 'Mauv', true, true, 2016, 'Car', 'Cadillac', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL23XT3710', 'Indigo', false, false, 2019, 'Bike', 'Suzuki', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL93YR4729', 'Fuscia', false, false, 2018, 'Car', 'Mercedes-Benz', 'Petrol', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL41QQ7253', 'Pink', false, true, 2011, 'Car', 'Chevrolet', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL72CZ8551', 'Goldenrod', true, false, 2014, 'Car', 'BMW', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL49UF0768', 'Blue', false, false, 2010, 'Car', 'Nissan', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL69WC7583', 'Puce', false, false, 2012, 'Car', 'Ford', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL29QF4363', 'Mauv', true, true, 2009, 'Car', 'GMC', 'Petrol', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL85WU1758', 'Purple', true, false, 2011, 'Car', 'Subaru', 'Petrol', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL80PQ2395', 'Mauv', false, false, 2016, 'Car', 'Hummer', 'Diesel', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL32PV0811', 'Yellow', false, false, 2013, 'Auto', 'Bajaj', 'CNG', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL25RB7703', 'Turquoise', true, false, 2019, 'Car', 'Mitsubishi', 'Petrol', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL91JE1944', 'Yellow', true, true, 2015, 'Car', 'Oldsmobile', 'CNG', true);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL62EI1466', 'Violet', false, false, 2019, 'Car', 'Chevrolet', 'Diesel', false);
insert into Vehicle (vin, Color, AC, WiFi, Model_year, Type, Vehicle_company, Fuel, Prime_ride) values ('DL08YC4858', 'Blue', true, true, 2018, 'Car', 'Infiniti', 'CNG', false);

insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (1, 'Idelle Chatainier', '5616058298', '6244 0055 7680', 42, '772 Westend Pass', 8, 0.4, 127150.48);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (2, 'Alejandra Polotti', '3719003580', '9537 3665 0598', 51, '68622 Oriole Way', 3, 2.9, 39953.85);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (3, 'Free Comport', '7473290479', '2770 2685 7415', 50, '38091 Jana Crossing', 5, 1.7, 82114.6);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (4, 'Mariette Abernethy', '2004317756', '6113 0021 1949', 54, '951 Springview Trail', 13, 4.8, 85471.32);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (5, 'Lynnett McMenamin', '9022856833', '5877 1455 6022', 40, '60 Browning Alley', 15, 0.2, 31557.13);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (6, 'Randi North', '3275147098', '2113 4652 9250', 57, '345 Hallows Avenue', 1, 2.6, 31799.25);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (7, 'Belinda Bysshe', '7216501930', '4895 2359 9840', 59, '22 Granby Circle', 5, 1.1, 60293.66);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (8, 'Essie Brigham', '9104565259', '1304 9283 7285', 27, '39 Westerfield Junction', 1, 3.0, 54522.97);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (9, 'Hartwell Thaxton', '3132178593', '4381 4627 6315', 58, '31636 West Alley', 15, 0.5, 27572.16);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (10, 'Mose Gutridge', '2827873570', '9319 5190 0214', 52, '92 Charing Cross Place', 4, 0.6, 40679.64);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (11, 'Adriane Beamand', '6775456072', '9976 4667 2448', 53, '3 Londonderry Lane', 8, 2.5, 128554.75);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (12, 'Michell Blackden', '1928485633', '2471 4862 8330', 20, '3777 Caliangt Hill', 4, 0.7, 74808.0);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (13, 'Gwendolen Geldert', '1498186551', '6732 4662 0394', 52, '2558 Tony Terrace', 7, 0.7, 48167.89);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (14, 'Beverlee Kimberly', '3765854365', '3296 1943 4831', 34, '2483 Pond Drive', 1, 3.9, 111878.85);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (15, 'Philipa Thursfield', '3693208036', '2864 3908 6002', 29, '62507 Russell Pass', 10, 4.8, 127562.61);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (16, 'Nikolas Saturley', '5995427811', '2655 0653 6721', 21, '64712 Towne Junction', 11, 4.4, 12563.86);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (17, 'Hieronymus Gillies', '2246062203', '5522 0917 9676', 27, '2 Lukken Junction', 7, 3.6, 71163.91);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (18, 'Nicol Parysiak', '8846340029', '7269 4392 5107', 18, '130 Karstens Plaza', 1, 3.4, 95104.85);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (19, 'Augustine Woakes', '9081293125', '7058 2105 7552', 43, '07 Surrey Street', 3, 1.3, 113390.06);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (20, 'Trumaine Slocum', '1107003886', '2799 2408 9152', 47, '1 Lotheville Drive', 10, 4.2, 143177.63);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (21, 'Regan Mingus', '9282413570', '6423 5242 0322', 27, '79 Pennsylvania Avenue', 11, 0.4, 90959.76);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (22, 'Stevena Lennard', '9437912575', '5521 9330 6344', 52, '95 Del Sol Trail', 12, 4.4, 89575.5);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (23, 'Pierce Print', '5412193283', '8486 4784 1141', 48, '4 Armistice Trail', 4, 4.6, 70269.71);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (24, 'Kati Jimson', '9592459109', '7058 1430 8770', 51, '43134 South Pass', 14, 4.2, 44487.61);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (25, 'Ase Gilmour', '5877109120', '7872 9610 2593', 24, '94549 Valley Edge Plaza', 0, 1.7, 32365.92);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (26, 'Shir Rivel', '9941352989', '5456 4522 8272', 19, '25086 Jay Street', 14, 0.3, 77885.8);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (27, 'Kira Lente', '8934114096', '5682 2828 3671', 41, '727 Kipling Junction', 11, 1.4, 26409.3);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (28, 'Lisle Beavers', '4944070934', '6364 3388 1167', 48, '9391 Debra Court', 9, 1.7, 53508.25);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (29, 'Perri Dufoure', '6894643117', '4569 0843 8375', 33, '31772 Golf Course Hill', 9, 4.0, 20161.74);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (30, 'Bernadene Clacey', '4549358378', '9803 2290 9575', 58, '00807 4th Alley', 12, 4.4, 141282.47);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (31, 'Minor England', '5576167828', '5628 0616 0989', 19, '610 School Court', 4, 1.2, 107361.47);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (32, 'Deena Ratazzi', '8903270789', '7415 5727 7172', 57, '7 Dunning Lane', 6, 4.3, 97351.9);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (33, 'Florance Vernham', '3644235921', '6729 8437 3431', 40, '2700 Gale Avenue', 7, 4.1, 81931.55);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (34, 'Lorant Chick', '7638189540', '3634 1987 7935', 42, '06977 Northport Place', 5, 0.0, 143303.11);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (35, 'Man MacAllaster', '1633724914', '0209 8633 9110', 32, '53604 Bay Alley', 10, 1.4, 127774.53);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (36, 'Marietta Nazer', '7507883723', '0258 0281 0487', 28, '3709 Towne Pass', 9, 4.4, 116454.41);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (37, 'Charyl Maffezzoli', '7791912857', '5754 7453 1994', 46, '2 Loftsgordon Junction', 15, 1.3, 261.12);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (38, 'Julienne Hanster', '2012092011', '9020 2440 0766', 19, '86 Kings Plaza', 10, 2.0, 106843.2);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (39, 'Dorelle Baseke', '2059639824', '4222 8959 2645', 57, '638 Grasskamp Court', 15, 1.5, 135806.41);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (40, 'Brandy Leggan', '6508039632', '9865 4965 1567', 57, '553 Rutledge Center', 9, 2.1, 130131.95);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (41, 'Jon Di Iorio', '7418974017', '0856 8385 6331', 20, '1 Hauk Drive', 12, 4.1, 92912.97);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (42, 'Dinnie Pipkin', '6653292400', '0575 8425 9860', 29, '0772 Lunder Alley', 15, 1.9, 35452.0);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (43, 'Keri Gregr', '1067035823', '6393 8069 8350', 44, '0195 Bluejay Point', 9, 1.0, 125707.8);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (44, 'Jacklyn Prahl', '5864858992', '4193 2670 1769', 32, '9 Fisk Center', 11, 1.4, 76530.03);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (45, 'Gifford Follitt', '3996874077', '5162 1348 0852', 38, '134 Anzinger Point', 7, 2.9, 125612.2);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (46, 'Rice Dunford', '2684120794', '9845 4745 4576', 52, '6 La Follette Lane', 7, 3.4, 50163.7);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (47, 'Huntlee Burree', '2575732803', '2514 5620 8253', 60, '15382 Tennyson Park', 1, 1.1, 116629.32);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (48, 'Sauveur Kepling', '1077530868', '0286 9750 5548', 56, '64797 Oak Park', 13, 0.5, 120564.3);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (49, 'Lauren Grigorescu', '5469130023', '0045 5782 3499', 22, '706 Vermont Point', 7, 2.0, 58411.26);
insert into Driver (id, Name, Phone_No, Aadhaar_Number, Age, Address, Experience, Rating, Earning) values (50, 'Shela Ridewood', '3174782117', '9268 5429 2050', 52, '38 Blackbird Pass', 15, 4.3, 85084.56);



insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (1, '4:12', '12:11', 16, '2021-03-10', 64, '981 Towne Avenue', '7 Aberg Avenue', 5.9);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (2, '4:42', '15:21', 21, '2022-01-21', 8, '559 Oriole Parkway', '20330 Northview Parkway', 140.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (3, '4:13', '8:00', 25, '2021-11-30', 113, '5 Ramsey Street', '25 Grover Parkway', 236.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (4, '0:57', '10:43', 6, '2021-06-08', 113, '73 Clyde Gallagher Court', '70827 Straubel Drive', 278.2);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (5, '0:21', '20:42', 28, '2021-11-16', 18, '32133 Porter Drive', '155 Sutherland Court', 181.1);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (6, '2:18', '13:00', 7, '2021-05-18', 27, '925 Erie Pass', '8275 Farwell Alley', 343.0);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (7, '3:23', '6:05', 5, '2021-08-23', 41, '3043 Ridgeway Junction', '4 Sage Alley', 179.2);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (8, '3:27', '16:28', 11, '2021-06-21', 103, '234 Maple Wood Circle', '3 Lake View Hill', 213.2);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (9, '0:13', '23:05', 20, '2021-12-24', 38, '72136 Lighthouse Bay Plaza', '972 Montana Alley', 126.1);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (10, '1:06', '14:10', 36, '2021-02-11', 100, '88 Sachtjen Road', '0 Sunnyside Trail', 318.9);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (11, '3:15', '19:16', 27, '2021-06-13', 58, '90786 Warner Hill', '3027 Menomonie Trail', 164.8);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (12, '4:00', '9:06', 30, '2021-09-25', 51, '16 Leroy Lane', '06149 Moulton Way', 12.6);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (13, '2:00', '12:57', 2, '2021-08-06', 94, '1 Thierer Center', '077 Reinke Way', 89.5);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (14, '0:33', '23:33', 15, '2021-07-23', 48, '5305 Morningstar Junction', '3 Autumn Leaf Trail', 205.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (15, '1:50', '21:31', 3, '2021-08-21', 20, '1 Mifflin Avenue', '212 Loomis Park', 348.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (16, '1:04', '19:37', 26, '2021-06-13', 65, '617 Shasta Street', '82 Sullivan Drive', 283.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (17, '2:50', '13:31', 31, '2021-09-20', 44, '128 Upham Point', '8 Russell Junction', 228.5);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (18, '0:30', '9:44', 9, '2021-04-27', 70, '344 Oneill Alley', '2867 Waxwing Hill', 231.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (19, '3:43', '22:52', 7, '2022-01-15', 15, '29948 Ridgeway Parkway', '6644 Hooker Place', 274.9);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (20, '2:30', '22:49', 7, '2021-04-05', 45, '87 Melby Plaza', '159 Northport Road', 48.8);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (21, '4:23', '10:17', 9, '2021-04-03', 118, '0872 Boyd Way', '876 Eggendart Street', 309.2);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (22, '4:25', '20:21', 8, '2021-07-30', 70, '73 Talisman Pass', '48130 Dorton Street', 349.2);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (23, '0:56', '23:41', 6, '2021-08-30', 106, '1 Oak Valley Road', '62 Wayridge Street', 112.0);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (24, '2:26', '18:41', 8, '2021-09-22', 99, '4615 Hoffman Place', '61601 Dexter Way', 301.0);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (25, '2:06', '22:48', 10, '2022-02-25', 74, '762 Rockefeller Circle', '322 Derek Court', 249.8);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (26, '0:15', '12:41', 12, '2021-11-02', 60, '44 Banding Way', '077 Mccormick Road', 72.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (27, '2:44', '20:54', 28, '2021-09-11', 23, '0255 Dakota Way', '9 Victoria Place', 2.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (28, '2:28', '17:34', 18, '2021-02-21', 66, '85 Bunting Crossing', '339 Mallory Trail', 244.1);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (29, '2:53', '6:01', 26, '2021-07-28', 8, '1120 4th Lane', '96923 Westport Circle', 254.0);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (30, '1:40', '16:38', 31, '2021-10-24', 106, '88 Sheridan Court', '370 Brickson Park Hill', 2.3);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (31, '1:41', '21:33', 35, '2022-01-12', 87, '844 Dawn Hill', '41334 Thompson Circle', 151.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (32, '1:50', '10:48', 6, '2021-07-12', 98, '8047 Arapahoe Trail', '2872 Kenwood Place', 24.9);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (33, '2:21', '23:28', 27, '2021-03-03', 82, '6208 Susan Plaza', '1 Elka Point', 15.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (34, '1:51', '11:16', 35, '2022-01-10', 30, '59093 Darwin Terrace', '95960 Russell Place', 17.7);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (35, '2:16', '5:18', 29, '2021-07-11', 117, '0 Utah Hill', '18531 Eliot Plaza', 253.3);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (36, '1:27', '11:31', 38, '2021-04-13', 81, '75905 Rusk Place', '954 Dwight Parkway', 227.8);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (37, '2:08', '19:23', 19, '2021-08-13', 69, '14 Clarendon Lane', '97416 Mallard Trail', 282.1);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (38, '3:27', '6:51', 38, '2021-09-17', 36, '89909 Continental Alley', '4 Graceland Circle', 147.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (39, '2:33', '19:11', 19, '2021-06-23', 65, '1 Dwight Hill', '5056 Debra Crossing', 304.9);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (40, '3:11', '15:16', 28, '2021-07-13', 76, '91 Summit Circle', '835 Sutherland Terrace', 303.0);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (41, '1:19', '8:01', 1, '2021-12-29', 24, '82029 Loeprich Lane', '108 Forest Run Street', 298.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (42, '1:34', '9:48', 38, '2021-05-26', 111, '415 Bonner Trail', '93 Wayridge Hill', 343.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (43, '1:48', '12:39', 14, '2021-11-21', 79, '82191 Fremont Plaza', '8395 Merrick Lane', 104.9);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (44, '3:59', '9:51', 15, '2021-03-17', 95, '73 Mockingbird Way', '54 Moose Drive', 270.4);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (45, '3:46', '6:54', 17, '2021-02-25', 120, '71993 Rusk Circle', '650 Shoshone Park', 329.8);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (46, '4:31', '9:44', 17, '2021-11-12', 61, '72031 Mccormick Junction', '387 Novick Hill', 45.8);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (47, '4:47', '14:23', 38, '2021-12-12', 56, '3637 Meadow Vale Hill', '0 Susan Avenue', 291.6);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (48, '1:14', '21:12', 33, '2021-07-26', 99, '3394 Hanover Plaza', '8 Vera Trail', 67.6);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (49, '2:03', '18:31', 32, '2021-08-12', 27, '075 Knutson Lane', '0927 Russell Plaza', 205.1);
insert into Trip (id, booking_time, pickup_time, waiting_time, trip_date, total_time, pickup_location, drop_location, distance) values (50, '1:30', '7:22', 39, '2021-12-28', 50, '322 David Drive', '3 Havey Pass', 111.9);


-- update a
-- set a.Age =  
-- from Driver a 
-- inner join Driver b
-- on a.id = b.id; 

-- update Driver m
-- 	inner join Driver e
--     on e.id = m.id
-- set m.Age = datediff( m.DOB    , GETdate() )/365
-- where e.id = m.id;

-- update Driver a, Driver b
-- set a.Age = (UNIX_TIMESTAMP(b.DOB) -
--          UNIX_TIMESTAMP(GETdate()) ) / 3600
-- where a.id = b.id;




insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Urbano Farbrace', '823-132-3758', 'ufarbrace0@51.la', 77, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Zaria Roggeman', '635-611-5071', 'zroggeman1@creativecommons.org', 57, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Mignon Stansbury', '567-723-5032', 'mstansbury2@forbes.com', 44, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Jaquelin Ganny', '599-268-6567', 'jganny3@godaddy.com', 63, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Thea Mowlam', '678-164-9354', 'tmowlam4@google.com.au', 32, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Zia Wardlaw', '174-882-3179', 'zwardlaw5@imgur.com', 57, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Gus Lilleman', '426-298-4159', 'glilleman6@github.com', 42, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Ezri Elen', '122-759-1825', 'eelen7@harvard.edu', 15, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Dolorita Enderson', '891-171-2595', 'denderson8@berkeley.edu', 15, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Ira Lief', '298-418-3268', 'ilief9@163.com', 45, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Niko Heinel', '730-168-2756', 'nheinela@godaddy.com', 28, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Eadith Bancroft', '317-979-6172', 'ebancroftb@tripadvisor.com', 22, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Cicily Pearton', '926-472-6755', 'cpeartonc@wordpress.org', 37, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Ariella Styant', '103-645-0592', 'astyantd@4shared.com', 25, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Elise Tissiman', '279-616-8694', 'etissimane@nih.gov', 44, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Inessa Skinner', '370-524-2227', 'iskinnerf@ovh.net', 61, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Ralf Scherer', '719-167-9469', 'rschererg@sciencedaily.com', 37, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Em Gresley', '544-956-9675', 'egresleyh@mlb.com', 53, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Lilith Libbe', '432-905-5337', 'llibbei@meetup.com', 31, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Hailee Sheahan', '375-176-0347', 'hsheahanj@bizjournals.com', 22, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Bernette Normanville', '856-781-7279', 'bnormanvillek@thetimes.co.uk', 22, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Barbey Sindle', '951-569-1814', 'bsindlel@ameblo.jp', 21, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Annalee Whitemarsh', '131-190-0816', 'awhitemarshm@jigsy.com', 17, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Whitby Forsdicke', '313-244-7274', 'wforsdicken@vk.com', 20, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Willie Klawi', '756-768-8787', 'wklawio@springer.com', 63, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Darcey Alker', '741-795-1306', 'dalkerp@trellian.com', 27, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Brod Blackney', '159-450-3983', 'bblackneyq@apple.com', 80, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Jerry Findlow', '684-977-8591', 'jfindlowr@mtv.com', 30, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Floria Gowry', '819-439-8788', 'fgowrys@hibu.com', 52, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Portia Bertomier', '573-884-7727', 'pbertomiert@gmpg.org', 69, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Bonnie Autry', '415-293-0443', 'bautryu@clickbank.net', 77, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Felicity Gever', '944-397-0498', 'fgeverv@usda.gov', 44, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Lea Goodday', '668-708-9053', 'lgooddayw@smh.com.au', 60, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Alec Mallabone', '158-544-2218', 'amallabonex@nhs.uk', 75, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Benoit Yitzovicz', '500-170-3131', 'byitzoviczy@examiner.com', 69, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Demetre Gravatt', '489-650-9095', 'dgravattz@purevolume.com', 42, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Iolanthe Sandwith', '243-645-3570', 'isandwith10@nyu.edu', 79, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Waylan Deely', '818-471-3656', 'wdeely11@tmall.com', 16, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Tiff Caccavella', '969-992-5827', 'tcaccavella12@canalblog.com', 40, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Tiffany McTerrelly', '381-569-9211', 'tmcterrelly13@addtoany.com', 80, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Hewe O''Dougherty', '735-838-8831', 'hodougherty14@topsy.com', 31, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Graham Lampet', '167-326-3072', 'glampet15@livejournal.com', 73, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Madelene Wathan', '619-746-4883', 'mwathan16@house.gov', 40, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Kathryn Howieson', '147-397-4323', 'khowieson17@fotki.com', 42, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Griffith Baynard', '314-202-7694', 'gbaynard18@ameblo.jp', 42, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Oriana Pittoli', '527-784-3179', 'opittoli19@howstuffworks.com', 39, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Blanch Keats', '323-308-7454', 'bkeats1a@washingtonpost.com', 18, 'CASH');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Bambi Dumingo', '466-321-2518', 'bdumingo1b@scientificamerican.com', 56, 'UPI');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Dael Plampeyn', '526-347-7539', 'dplampeyn1c@photobucket.com', 25, 'CARD');
insert into Passenger (Name, Phone_Number, Email_id, Age, Mode_of_payment) values ('Karlyn Finessy', '804-182-5727', 'kfinessy1d@ebay.co.uk', 75, 'CASH');



 INSERT INTO drives (vin, driver_id) values ('DL31JV3890','1');
 INSERT INTO drives(vin, driver_id) values('DL37MN0195','2');
 INSERT INTO drives(vin, driver_id) values('DL18RW4812','3');
 INSERT INTO drives(vin, driver_id) values('DL98CW7906','4');
 INSERT INTO drives(vin, driver_id) values('DL78WL7240','5'  );
 INSERT INTO drives(vin, driver_id) values('DL19EA3145','6'  );
 INSERT INTO drives(vin, driver_id) values('DL16WX0813','7' );
 INSERT INTO drives(vin, driver_id) values('DL64SG3192','8'  );
 INSERT INTO drives(vin, driver_id) values('DL77KE8690','9'  );
 INSERT INTO drives(vin, driver_id) values('DL45AP6552','10'  );
 INSERT INTO drives(vin, driver_id) values('DL65LL4781','11' );
 INSERT INTO drives(vin, driver_id) values('DL85LM4824','12' );
 INSERT INTO drives(vin, driver_id) values('DL76YM2685','13'  );
 INSERT INTO drives(vin, driver_id) values('DL08QW6551','14'  );
 INSERT INTO drives(vin, driver_id) values('DL51EM8807','15' );
 INSERT INTO drives(vin, driver_id) values('DL57RN2028','16'  );
 INSERT INTO drives(vin, driver_id) values('DL52ZX4382','17'  );
 INSERT INTO drives(vin, driver_id) values('DL63RK9978','18'  );
 INSERT INTO drives(vin, driver_id) values('DL42RT0143','19'  );
 INSERT INTO drives(vin, driver_id) values('DL55OO0588','20'  );
 INSERT INTO drives(vin, driver_id) values('DL11TF4407','21' );
 INSERT INTO drives(vin, driver_id) values('DL86JB1813','22'  );
 INSERT INTO drives(vin, driver_id) values('DL10RS1272','23'  );
 INSERT INTO drives(vin, driver_id) values('DL60YI9379','24' );
 INSERT INTO drives(vin, driver_id) values('DL40CC7138','25'  );
 INSERT INTO drives(vin, driver_id) values('DL38MP0944','26' );
 INSERT INTO drives(vin, driver_id) values('DL51GX1114','27' );
 INSERT INTO drives(vin, driver_id) values('DL16EQ6966','28'  );
 INSERT INTO drives(vin, driver_id) values('DL02NW1260','29'  );
 INSERT INTO drives(vin, driver_id) values('DL60MY7723','30' );
 INSERT INTO drives(vin, driver_id) values('DL09DM6004','31'  );
 INSERT INTO drives(vin, driver_id) values('DL13LP8357','32'  );
 INSERT INTO drives(vin, driver_id) values('DL66UY7249','33' );
 INSERT INTO drives(vin, driver_id) values('DL52AE8696','34' );
 INSERT INTO drives(vin, driver_id) values('DL44OB5390','35'   );
 INSERT INTO drives(vin, driver_id) values('DL05ZS9449','36'  );
 INSERT INTO drives(vin, driver_id) values('DL23XT3710','37'   );
 INSERT INTO drives(vin, driver_id) values('DL93YR4729','38'   );
 INSERT INTO drives(vin, driver_id) values('DL41QQ7253','39'  );
 INSERT INTO drives(vin, driver_id) values('DL72CZ8551','40'  );
 INSERT INTO drives(vin, driver_id) values('DL49UF0768','41'   );
 INSERT INTO drives(vin, driver_id) values('DL69WC7583','42'  );
 INSERT INTO drives(vin, driver_id) values('DL29QF4363','43'   );
 INSERT INTO drives(vin, driver_id) values('DL85WU1758','44'   );
 INSERT INTO drives(vin, driver_id) values('DL80PQ2395','45'   );
 INSERT INTO drives(vin, driver_id) values('DL32PV0811','46'   );
 INSERT INTO drives(vin, driver_id) values('DL25RB7703','47'   );
 INSERT INTO drives(vin, driver_id) values('DL91JE1944','48'   );
 INSERT INTO drives(vin, driver_id) values('DL62EI1466','49'   );
 INSERT INTO drives(vin, driver_id) values('DL08YC4858','50'   );

INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('1', '0avpi0qpc5bi', '300');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('2', '1r4t2bsbypkh', '400');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('3', '4185pgyuhmla', '500');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('4', '5gk7k6o82rnj', '600');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('5', '7wv3w7cohpgw', '700');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('6', '8iaeonn65ock', '800');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('7', '8mwv5yjsyofz', '900');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('8', '9qktcuz8dqp9', '1000');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('9', 'ab3o2zymwobf', '1100');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('10', 'anrqhd6soeue', '1200');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('11', 'bfg6dji64mqw', '1300');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('12', 'c4m9kmzckifo', '1400');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('13', 'elzlpouam0yb', '1500');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('14', 'f9k9qxym4ku1', '1600');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('15', 'f9qmb1znibt7', '1700');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('16', 'g3ua06i43isc', '1800');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('17', 'g5bfq5xwvn8j', '1900');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('18', 'gwe79su9li24', '2000');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('19', 'hqcu3f1qkvcn', '2100');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('20', 'i1kadm8rv8mb', '2200');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('21', 'idtc83ymr8rj', '2300');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('22', 'it3lt3wufgrb', '2400');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('23', 'j231sb7rst8t', '2500');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('24', 'kn23to6e8kna', '2600');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('25', 'l6rpc8w37214', '2700');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('26', 'lf3fa7ysro4y', '2800');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('27', 'lkhn5zso0v4b', '2900');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('28', 'm5rorxmkbxqw', '3000');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('29', 'n47zu0bgsywh', '350');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('30', 'ns53x9l550hf', '450');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('31', 'ny5e9pninyo9', '550');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('32', 'pcmfy0c2dp9m', '650');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('33', 'pesv7mk0bhqa', '750');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('34', 'rorx7r53awwc', '850');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('35', 'smurgzlmav60', '950');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('36', 'udeywaw2rs75', '1050');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('37', 'uibvrk12fqrr', '1150');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('38', 'v024ewrq8piq', '1250');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('39', 'v21vzp77hmq7', '1350');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('40', 'vbptwyb5of97', '1450');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('41', 'wxphxwmaduga', '1550');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('42', 'x64x26hj70ke', '1650');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('43', 'xg2tlodnijc3', '1750');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('44', 'xp5mczgcafe3', '1850');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('45', 'z5eh2vtqwhzz', '1950');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('46', 'z8gbwkten665', '2050');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('47', 'zfrkhzpj7cri', '2150');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('48', 'zkdjl2cmk4zl', '2250');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('49', 'zmwfmculxi45', '2350');
UPDATE payment SET trip_id = '35' WHERE (trip_id = '34') and (transection_id = 'rorx7r53awwc');
UPDATE payment SET trip_id = '36' WHERE (trip_id = '35') and (transection_id = 'smurgzlmav60');
UPDATE payment SET trip_id = '37' WHERE (trip_id = '36') and (transection_id = 'udeywaw2rs75');
UPDATE payment SET trip_id = '38' WHERE (trip_id = '37') and (transection_id = 'uibvrk12fqrr');
UPDATE payment SET trip_id = '39' WHERE (trip_id = '38') and (transection_id = 'v024ewrq8piq');
UPDATE payment SET trip_id = '40' WHERE (trip_id = '39') and (transection_id = 'v21vzp77hmq7');
UPDATE payment SET trip_id = '41' WHERE (trip_id = '40') and (transection_id = 'vbptwyb5of97');
UPDATE payment SET trip_id = '42' WHERE (trip_id = '41') and (transection_id = 'wxphxwmaduga');
UPDATE payment SET trip_id = '43' WHERE (trip_id = '42') and (transection_id = 'x64x26hj70ke');
UPDATE payment SET trip_id = '44' WHERE (trip_id = '43') and (transection_id = 'xg2tlodnijc3');
UPDATE payment SET trip_id = '45' WHERE (trip_id = '44') and (transection_id = 'xp5mczgcafe3');
UPDATE payment SET trip_id = '46' WHERE (trip_id = '45') and (transection_id = 'z5eh2vtqwhzz');
UPDATE payment SET trip_id = '47' WHERE (trip_id = '46') and (transection_id = 'z8gbwkten665');
UPDATE payment SET trip_id = '48' WHERE (trip_id = '47') and (transection_id = 'zfrkhzpj7cri');
UPDATE payment SET trip_id = '49' WHERE (trip_id = '48') and (transection_id = 'zkdjl2cmk4zl');
UPDATE payment SET trip_id = '50' WHERE (trip_id = '49') and (transection_id = 'zmwfmculxi45');
INSERT INTO payment(trip_id, transection_id, fare)  VALUES ('34', 'q9zx2ak3ml0w', '2450');


INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('103-645-0592', '1', '1', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('103-645-0592', '2', '1', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('103-645-0592', '3', '1', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('122-759-1825', '4', '1', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('122-759-1825', '5', '1', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('122-759-1825', '6', '2', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('131-190-0816', '7', '2', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('131-190-0816', '8', '2', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('131-190-0816', '9', '2', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('147-397-4323', '10', '2', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('147-397-4323', '11', '3', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('147-397-4323', '12', '3', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('158-544-2218', '13', '3', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('158-544-2218', '14', '3', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('158-544-2218', '15', '3', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('159-450-3983', '16', '4', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('159-450-3983', '17', '4', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('159-450-3983', '18', '4', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('167-326-3072', '19', '4', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('167-326-3072', '20', '4', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('167-326-3072', '21', '5', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('174-882-3179', '22', '5', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('174-882-3179', '23', '5', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('174-882-3179', '24', '5', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('243-645-3570', '25', '5', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('243-645-3570', '26', '6', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('243-645-3570', '27', '6', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('279-616-8694', '28', '6', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('279-616-8694', '29', '6', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('279-616-8694', '30', '6', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('298-418-3268', '31', '7', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('298-418-3268', '32', '7', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('298-418-3268', '33', '7', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('313-244-7274', '34', '7', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('313-244-7274', '35', '7', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('313-244-7274', '36', '8', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('314-202-7694', '37', '8', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('314-202-7694', '38', '8', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('314-202-7694', '39', '8', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('317-979-6172', '40', '8', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('317-979-6172', '41', '9', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('317-979-6172', '42', '9', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('323-308-7454', '43', '9', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('323-308-7454', '44', '9', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('323-308-7454', '45', '9', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('370-524-2227', '46', '10', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('370-524-2227', '47', '10', '4');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('370-524-2227', '48', '10', '5');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('375-176-0347', '49', '10', '3');
INSERT INTO pass_trip(phone_number, trip_id, driver_id, rating) VALUES ('375-176-0347', '50', '10', '4');


