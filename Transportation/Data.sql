
-- Adding data into the drivers table 
INSERT INTO Drivers (PaymentID, FirstName, LastName, DateOfBirth, EmailAddress, PhoneNumber)
VALUES (101, 'Sam', 'Ham', '02/12/2000', 'Samham@gmail.com', '345-231-1234'), 
		(103, 'Max', 'Tax', '03/22/1994', 'Maxtax@gmail.com', '455-231-3216'),
		(102, 'Sara', 'Tom', '06/12/1932', 'SaraTom@gmail.com', '212-231-8768'),
		(109, 'Tommy', 'Ham', '02/12/2000', 'Tommyham@gmail.com', '543-231-1234'),
		(110, 'George', 'Turner', '08/12/1995', 'g.turner@randatmail.com', '999-767-6799');



-- Adding data into the individuals table 
INSERT INTO Passengers (DriverID, TransportID, PaymentID, FirstName, LastName, DateOfBirth, EmailAddress, PhoneNumber)
VALUES (4563, 2, 104, 'Sandra', 'Ham', '07/12/1995', 'SandraHam@gmail.com',  '345-231-1234'), 
		(4567, 1, 106, 'Lexy', 'Tru', '08/22/1994', 'LexyTru@gmail.com',  '455-231-3216'),
		(4571, 3, 105, 'Alex', 'Tom', '06/12/1932', 'AlexTom@gmail.com', '212-231-8768'),
		(4575, 4, 111, 'Noel', 'Ham', '04/12/2000', 'Noelham@gmail.com',  '543-231-1234'),
		(4579, 6, 117, 'Alford', 'Cameron', 'a.cameron@randatmail.com', '090-248-5798'),
		(4543, 5, 107, 'Oliver', 'Smith', 'o.smith@randatmail.com',  '875-149-4514'),
		(4571, 8, 108, 'Victoria', 'Stevens', 'v.stevens@randatmail.com', '275-832-3883'),
		(4575, 7, 112, 'Clark', 'Riley', 'c.riley@randatmail.com', '254-592-6054'),
		(4571, 9, 115, 'Justin', 'Montgomery', 'j.montgomery@randatmail.com', '575-835-0456'),
		(4575, 11, 118 'Kristian', 'Roberts', 'k.roberts@randatmail.com',  '576-502-9047'),
		(4567, 13, 113, 'Adam', 'Thompson', 'a.thompson@randatmail.com', '264-181-1943'),
		(4571, 12, 114, 'Daisy', 'Turner', 'd.turner@randatmail.com',  '339-691-7123'),
		(4567, 10, 119, 'Walter', 'Murray', 'w.murray@randatmail.com', '890-301-5142');


-- Adding data into the Transports table 
INSERT INTO Transports (LocationPickUp, LocationDropOff, TimePickUp, TimeDropOff)
VALUES ('337 Russell St, Hadley MA 1035', '91 Memorial Dr, Chicopee MA 1020', '07:30', '10:30'), 
		('295 Plymouth Street, Halifax MA 2338', '1775 Washington St, Hanover MA 2339', '08:40', '12:20'),
		('1775 Washington St, Hanover MA 2339', '20 Soojian Dr, Leicester MA 1524', '13:50', '15:32'),
		('11 Jungle Road, Leominster MA 1453', '301 Massachusetts Ave, Lunenburg MA 1462', '04:20', '06:10');
		('59 Beechwood Street West Hempstead, NY 11552', '8443 W. Rockledge Street Southaven, MS 38671',)
		('7269 Myrtle Ave. Worcester, MA 01604', '89 Young St. Forney, TX 75126',)
		('81 Highland Street Suite 35 Grandville, MI 49418', '22 Ketch Harbour Street New Windsor, NY 12553',)
		('715 Birch Hill Road Mount Airy, MD 21771', '79 S. Atlantic Ave. Port Chester, NY 10573',)
		('197 Mulberry Lane Bardstown, KY 40004', '606 Manor Dr. Salt Lake City, UT 84119',)
		('34 Amherst Street Saint Cloud, MN 56301', '558 North Lafayette Ave. New Berlin, WI 53151',)
		('9401 West Willow St. Canyon Country, CA 91387', '99 E. Peninsula Ave. Phillipsburg, NJ 08865',)
		('6 Greystone Avenue Saginaw, MI 48601', '631 East Road Hamden, CT 06514',)
		('8754 Tallwood Drive Decatur, GA 30030', '77 Essex Rd. Geneva, IL 60134',);


-- Adding data into the payment table 
INSERT INTO Payments (BankName, AccountNumber, RoutingNumber)
VALUES ('Chase Bank', '11213145', '00004563'), 
		('Chase Bank', '55818947', '00004563'), 
		('America Bank', '11123456', '000003245'), 
		('America Bank', '41123452', '000003245'), 
		('America Bank', '71123454', '000003245'), 
		('Chase Bank', '11111235', '00004563'), 
		('Chase Bank', '51111237', '00004563'), 
		('American Bank', '11246874', '000003295'), 
		('Chase Bank', '90438012', '00004563'), 
		('Absolute Banks','79864924','440485968'),
		('Evolution Holdings', '74231845','542235171'), 
		('Elite Bank System', '49491745','579231889'), 
		('Absolute Banks', '517712344', '86162939'),
		('Absolute Banks', '687798926', '86162939'),
		('Absolute Banks', '481222339', '86162939'), 
		('Commonwealth Bank Corp', '35450615','895063090'), 
		('New Heights Financial Inc', '517016545', '01523098'), 
		('New Heights Financial Inc', '468514439', '01523098'), 
		('New Heights Financial Inc', '251037165', '01523098');


-- Adding data into the trip table 
INSERT INTO TripNumber(TransportID, TripMillage)
VALUES (1, '34'),
		(2, '57'),
		(3, '23'),
		(4, '64')
        (5, '53'),
        (6, '123'),
        (7, '143'),
        (8, '50'),
        (9, '96'),
        (10, '80'),
        (11, '40'),
        (12, '57'),
        (13, '62');