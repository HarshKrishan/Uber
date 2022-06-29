create database uber;
use uber;

create table Driver (
	id INT,
	Name VARCHAR(50),
	Phone_No VARCHAR(50),
	DOB DATE,
	Address VARCHAR(50),
	Experience INT,
	Rating DECIMAL(2,1),
	Earning VARCHAR(50),
    primary key(id)
    
  
    
);
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (1, 'Jessamine Bortolotti', '905-801-7983', '1994-07-30', '744 Bashford Road', 15, 1.0, '$730.12');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (2, 'Spense MacAne', '346-126-0837', '1984-09-01', '98059 Westridge Plaza', 15, 2.7, '$803.97');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (3, 'Chrysa Lackemann', '942-579-2424', '1980-01-16', '179 Stone Corner Pass', 14, 2.6, '$1638.64');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (4, 'Randal Arsey', '226-539-6889', '1975-10-30', '98282 Pennsylvania Plaza', 15, 0.4, '$1321.44');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (5, 'Taffy Gatward', '196-283-8674', '1977-10-02', '2 Superior Road', 7, 1.1, '$194.53');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (6, 'Manny Culshew', '644-104-6049', '1983-04-22', '41 Iowa Plaza', 0, 4.9, '$1626.55');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (7, 'Catarina Runchman', '693-497-4793', '2000-07-14', '73 Helena Court', 6, 4.2, '$1971.32');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (8, 'Shelley Nelthorp', '314-820-3351', '1973-12-22', '0 5th Drive', 4, 2.0, '$104.30');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (9, 'Leola Renahan', '607-535-3192', '1978-04-22', '0 Crownhardt Plaza', 3, 2.9, '$690.19');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (10, 'Aldin Dudbridge', '933-610-8118', '1973-08-07', '0 Mccormick Road', 4, 3.2, '$1308.03');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (11, 'Alisha Jerrand', '932-273-9617', '1974-09-14', '028 Cody Junction', 3, 2.6, '$730.27');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (12, 'Thorpe Ridges', '495-828-7885', '1991-09-29', '53528 Ronald Regan Terrace', 2, 1.6, '$1211.68');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (13, 'Markos Meller', '571-230-2744', '1985-10-18', '1 Brickson Park Trail', 15, 0.8, '$1510.94');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (14, 'Nancie Beach', '881-983-2301', '1986-06-17', '16795 Schmedeman Court', 14, 4.2, '$171.30');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (15, 'Kassandra Stammler', '166-546-0718', '2001-09-22', '17 Gerald Court', 13, 1.6, '$1575.41');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (16, 'Imogen MacKellen', '884-160-1605', '1996-02-10', '6 Hintze Plaza', 14, 4.0, '$1889.82');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (17, 'Minda Aldiss', '783-376-4414', '1995-06-05', '3017 Arrowood Way', 5, 4.6, '$1457.00');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (18, 'Emmalynn Erwin', '438-998-7239', '1978-12-18', '184 Di Loreto Plaza', 3, 4.6, '$558.56');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (19, 'Redford Coulston', '480-934-3513', '2002-09-17', '3 Prairieview Pass', 4, 3.9, '$635.22');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (20, 'Gabbie Stairmand', '394-136-5011', '1987-06-09', '2637 Autumn Leaf Pass', 8, 4.4, '$514.82');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (21, 'Prudi Tolworth', '950-528-2693', '1980-10-22', '81 Oneill Parkway', 8, 3.5, '$1394.34');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (22, 'Carlin Broek', '261-847-9420', '1974-05-07', '84 Mitchell Junction', 15, 3.4, '$1876.70');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (23, 'Dell Thicking', '540-243-1142', '1994-04-09', '92958 Monument Point', 5, 2.6, '$1186.99');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (24, 'Teena Shakesby', '772-766-9459', '1977-03-27', '91 Beilfuss Center', 4, 1.7, '$1581.15');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (25, 'Lauraine Coull', '517-776-1092', '1993-06-20', '1658 Namekagon Street', 12, 2.5, '$893.11');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (26, 'Englebert Redwin', '505-333-4215', '1977-12-28', '96 Cottonwood Junction', 8, 2.8, '$512.93');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (27, 'Arvie Rasell', '382-129-8778', '1984-05-22', '0741 Sommers Plaza', 12, 3.7, '$1581.21');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (28, 'Golda Broadbent', '150-644-9113', '1985-04-03', '432 Memorial Hill', 7, 4.9, '$234.37');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (29, 'Piotr Gilbane', '976-151-2793', '1975-03-16', '470 Birchwood Park', 9, 0.5, '$921.34');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (30, 'Antony Wallicker', '582-956-7335', '1983-03-28', '3596 Sauthoff Park', 12, 1.0, '$844.70');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (31, 'Melisande Mold', '422-163-9007', '1983-08-16', '35867 Nobel Plaza', 11, 4.9, '$1491.27');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (32, 'Newton Chrestien', '884-895-9293', '1973-08-21', '7 Summit Drive', 4, 3.9, '$932.69');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (33, 'Fanya Klaffs', '561-734-4117', '1981-10-25', '29 High Crossing Alley', 2, 1.1, '$1482.97');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (34, 'Rahel Newlin', '234-728-1059', '1985-06-23', '57034 Sunnyside Street', 8, 0.3, '$1108.23');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (35, 'Humberto Nutkins', '949-207-1828', '1980-11-15', '3777 Meadow Ridge Lane', 15, 2.7, '$802.61');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (36, 'Gerda Webberley', '949-559-6666', '1984-06-06', '61 Jenifer Alley', 10, 4.9, '$1624.01');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (37, 'Moina Guillet', '107-364-8894', '1978-04-04', '0838 Di Loreto Crossing', 6, 2.3, '$1717.93');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (38, 'Allsun Sneyd', '165-629-9096', '1972-11-13', '13 Division Way', 7, 1.2, '$1350.20');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (39, 'Sybyl Poppy', '739-251-0116', '1988-04-25', '07974 Hauk Center', 9, 0.4, '$223.45');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (40, 'Buddy Tremblot', '471-490-4704', '1987-07-20', '24 Boyd Trail', 13, 4.7, '$469.77');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (41, 'Stearn Fleeming', '202-255-3818', '1991-08-02', '57 Superior Drive', 4, 4.8, '$650.82');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (42, 'Shurlocke Andreone', '412-489-3859', '1996-07-22', '26 Londonderry Trail', 11, 1.6, '$648.38');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (43, 'Mayer Bohills', '731-527-6024', '1981-10-03', '61 Kenwood Crossing', 1, 2.0, '$1111.59');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (44, 'Spense Audas', '303-838-2735', '1980-03-31', '28430 Del Sol Hill', 8, 1.9, '$1104.68');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (45, 'Dolly Edes', '309-891-8955', '1992-11-20', '45 Granby Lane', 6, 3.1, '$1404.11');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (46, 'Elston Ballard', '649-999-3611', '1996-07-22', '9 Valley Edge Trail', 12, 1.9, '$1986.83');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (47, 'Jeanie Gwatkins', '943-248-7004', '1980-04-29', '37196 Havey Trail', 13, 4.8, '$167.97');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (48, 'Paxton Kegan', '373-347-3828', '1992-09-18', '459 Prairieview Street', 1, 3.8, '$1275.67');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (49, 'Myles Summerbell', '442-530-5092', '1989-02-07', '8872 Kedzie Circle', 8, 1.9, '$1807.77');
insert into Driver (id, Name, Phone_No, DOB, Address, Experience, Rating, Earning) values (50, 'Mariam Spincks', '979-576-6600', '1990-11-15', '18005 Corscot Street', 7, 4.2, '$1104.42');

driver
create table Passenger (
	Name VARCHAR(50),
	Phone_Number VARCHAR(50),
	Email_id VARCHAR(50),
	Age INT,
	Mode_of_payment VARCHAR(50),
    primary key(Phone_Number)
    
);

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


