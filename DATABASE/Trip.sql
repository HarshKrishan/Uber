create database uber;
use uber;
create table Trip (
	id INT,
	booking_time VARCHAR(50),
	waiting_time VARCHAR(50),
	pickup_time VARCHAR(50),
	trip_date DATE,
	total_time DECIMAL(4,2),
	pickup_location VARCHAR(50),
	drop_location VARCHAR(50),
	distance DECIMAL(5,2)
);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (1, '0:39', '7:34', '23:11', '2021-12-27', 30.86, '249 Hauk Terrace', '51464 Quincy Place', 261.71);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (2, '21:34', '16:45', '13:17', '2021-08-23', 34.85, '47134 Reindahl Center', '90 Meadow Valley Road', 287.2);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (3, '10:59', '11:09', '6:52', '2021-11-10', 31.78, '470 Starling Trail', '6944 Norway Maple Circle', 69.7);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (4, '15:47', '13:52', '8:39', '2021-06-10', 51.44, '845 Redwing Point', '9 Russell Terrace', 242.68);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (5, '17:51', '19:09', '10:49', '2021-07-25', 20.58, '479 Tomscot Pass', '88282 Reinke Alley', 65.67);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (6, '12:39', '13:44', '21:02', '2022-01-02', 6.02, '9 Harbort Junction', '9287 Dapin Point', 252.48);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (7, '0:24', '8:08', '13:18', '2022-02-10', 58.87, '45 Northland Parkway', '75 Golf Course Junction', 249.72);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (8, '13:00', '4:33', '12:14', '2021-12-09', 34.98, '4 Bluejay Trail', '6976 Bultman Avenue', 247.86);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (9, '8:45', '4:37', '15:55', '2021-11-23', 25.26, '501 Scott Crossing', '9 Everett Way', 200.16);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (10, '2:04', '11:16', '14:21', '2021-12-20', 40.14, '7337 Fuller Road', '8263 Havey Pass', 261.74);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (11, '10:17', '18:08', '9:21', '2022-02-05', 56.58, '693 School Road', '24 Fair Oaks Parkway', 134.83);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (12, '22:47', '15:08', '16:12', '2021-09-25', 15.03, '383 Oak Valley Court', '4 Eliot Alley', 75.32);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (13, '1:00', '19:38', '1:04', '2022-01-20', 51.88, '60 Talmadge Court', '7367 Judy Way', 232.52);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (14, '9:08', '11:28', '18:22', '2021-04-05', 34.76, '42359 Butterfield Terrace', '58360 Dapin Park', 18.56);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (15, '11:21', '21:17', '5:03', '2021-06-28', 3.53, '2631 Erie Lane', '53642 Carioca Park', 59.56);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (16, '13:16', '3:48', '22:03', '2021-07-12', 6.65, '39 Golden Leaf Place', '8 Donald Center', 156.29);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (17, '12:48', '11:33', '4:24', '2022-01-19', 7.38, '59579 Elgar Crossing', '4 Prentice Street', 228.72);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (18, '6:29', '11:18', '4:33', '2021-11-14', 56.16, '7 Mallory Point', '8314 Helena Street', 18.32);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (19, '1:43', '10:42', '17:33', '2021-09-03', 45.04, '40 Hauk Lane', '9 Beilfuss Avenue', 139.08);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (20, '5:59', '6:00', '6:14', '2022-01-13', 7.79, '754 Kedzie Hill', '52808 Hermina Way', 2.68);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (21, '14:28', '11:02', '3:34', '2021-07-05', 31.58, '2598 Vahlen Pass', '6841 Magdeline Pass', 42.62);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (22, '19:38', '16:55', '7:01', '2021-09-07', 51.23, '86 Novick Pass', '55015 Vahlen Court', 142.01);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (23, '17:18', '3:17', '16:28', '2021-07-02', 32.97, '42 Delaware Terrace', '963 Carpenter Alley', 84.88);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (24, '3:39', '3:55', '15:25', '2021-12-09', 39.19, '6541 Packers Parkway', '5980 Victoria Pass', 277.25);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (25, '9:10', '14:03', '20:38', '2021-03-29', 1.18, '66 Kim Avenue', '1 Truax Hill', 79.16);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (26, '2:05', '9:40', '6:02', '2021-12-14', 13.25, '56 Novick Trail', '107 Valley Edge Hill', 104.07);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (27, '20:12', '21:30', '9:44', '2021-05-08', 5.0, '98030 Mifflin Place', '97 Cody Park', 136.17);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (28, '13:41', '15:55', '18:12', '2022-01-31', 8.49, '0 Mandrake Plaza', '7 Kensington Street', 114.36);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (29, '13:22', '20:45', '2:35', '2021-03-19', 39.62, '5 Susan Place', '95356 Coleman Alley', 231.82);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (30, '4:29', '18:33', '7:02', '2021-05-15', 20.2, '88 Red Cloud Drive', '072 Lien Avenue', 217.44);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (31, '20:18', '15:42', '16:15', '2021-12-07', 52.66, '12682 Hauk Plaza', '12 Quincy Place', 279.04);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (32, '1:04', '12:34', '17:29', '2021-02-21', 19.45, '9618 Magdeline Terrace', '0 Division Center', 236.95);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (33, '18:38', '12:12', '19:46', '2022-02-02', 34.88, '2261 Golf Course Road', '196 Portage Park', 117.72);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (34, '16:36', '1:02', '2:48', '2021-10-28', 51.94, '4 Harbort Place', '8 Pleasure Hill', 59.24);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (35, '6:36', '9:58', '21:25', '2021-12-12', 42.98, '3 Eagle Crest Point', '9723 Pawling Center', 3.26);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (36, '17:14', '23:56', '17:38', '2021-09-28', 37.95, '87392 Commercial Plaza', '44944 Walton Street', 289.28);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (37, '7:02', '12:27', '0:19', '2021-06-07', 10.52, '493 Oak Valley Parkway', '39038 Fairfield Lane', 184.05);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (38, '17:26', '2:23', '6:41', '2022-02-02', 41.8, '7232 Stone Corner Center', '968 Fuller Crossing', 171.95);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (39, '2:51', '2:24', '9:38', '2021-03-06', 47.3, '7418 Manitowish Lane', '6031 Elmside Parkway', 163.49);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (40, '10:08', '19:09', '13:25', '2022-02-14', 11.38, '8921 Kenwood Hill', '2 Johnson Plaza', 152.01);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (41, '19:21', '20:42', '13:57', '2021-06-11', 10.22, '01 Muir Lane', '01 Barnett Hill', 175.51);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (42, '21:25', '8:43', '18:33', '2022-02-05', 56.57, '15 Elgar Road', '07004 Clarendon Center', 199.07);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (43, '14:14', '1:56', '7:31', '2021-07-15', 45.78, '614 Manitowish Drive', '530 Meadow Valley Alley', 202.02);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (44, '23:34', '11:40', '7:39', '2022-01-09', 16.55, '4 Union Avenue', '8 Myrtle Junction', 287.98);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (45, '5:33', '15:39', '10:42', '2021-08-09', 32.21, '385 Mayer Park', '208 Carpenter Court', 186.34);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (46, '10:25', '7:50', '18:59', '2021-10-05', 47.05, '2 Sutherland Way', '4 Bowman Terrace', 160.02);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (47, '21:33', '14:03', '5:50', '2021-05-13', 23.06, '77 Lunder Alley', '3 Stone Corner Way', 233.47);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (48, '14:43', '23:46', '4:50', '2021-08-06', 10.19, '06 2nd Circle', '4739 Luster Hill', 187.74);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (49, '20:29', '1:06', '14:20', '2021-08-30', 23.55, '80782 Northwestern Lane', '575 Jenifer Point', 15.77);
insert into Trip (id, booking_time, waiting_time, pickup_time, trip_date, total_time, pickup_location, drop_location, distance) values (50, '19:56', '22:44', '19:12', '2021-12-02', 38.34, '0 Pine View Crossing', '1 Artisan Alley', 46.06);


drop table vehicle;
