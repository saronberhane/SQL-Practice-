
USE Transportation

-- Adding data into the drivers table 
INSERT INTO Drivers (FirstName, LastName, DateOfBirth, EmailAddress, PaymentMethod, PhoneNumber)
VALUES ('Sam', 'Ham', '02/12/2000', 'Samham@gmail.com', 'Chase Bank', '345-231-1234'), 
		('Max', 'Tax', '03/22/1994', 'Maxtax@gmail.com', 'America Bank', '455-231-3216'),
		('Sara', 'Tom', '06/12/1932', 'SaraTom@gmail.com', 'Chase Bank', '212-231-8768'),
		('Tommy', 'Ham', '02/12/2000', 'Tommyham@gmail.com', 'Chase Bank', '543-231-1234'),
		('George', 'Turner', '08/12/1995', 'g.turner@randatmail.com', 'Absolute Banks', '999-767-6799');


-- Adding data into the individuals table 
INSERT INTO Passengers (DriverID, TransportID, FirstName, LastName, DateOfBirth, EmailAddress, PaymentMethod, PhoneNumber)
VALUES (4563, 2, 'Sandra', 'Ham', '07/12/1995', 'SandraHam@gmail.com', 'America Bank', '345-231-1234'), 
		(4567, 1, 'Lexy', 'Tru', '08/22/1994', 'LexyTru@gmail.com', 'America Bank', '455-231-3216'),
		(4571, 3, 'Alex', 'Tom', '06/12/1932', 'AlexTom@gmail.com', 'Chase Bank', '212-231-8768'),
		(4575, 4, 'Noel', 'Ham', '04/12/2000', 'Noelham@gmail.com', 'Chase Bank', '543-231-1234'),
		(4579, 6, 'Alford', 'Cameron', 'a.cameron@randatmail.com', 'Evolution Holdings', '090-248-5798'),
		(4543, 5, 'Oliver', 'Smith', 'o.smith@randatmail.com', 'Elite Bank System', '875-149-4514'),
		(4571, 8, 'Victoria', 'Stevens', 'v.stevens@randatmail.com', 'Absolute Banks', '275-832-3883'),
		(4575, 7, 'Clark', 'Riley', 'c.riley@randatmail.com','Commonwealth Bank Corp', '254-592-6054'),
		(4571, 9, 'Justin', 'Montgomery', 'j.montgomery@randatmail.com','New Heights Financial Inc', '575-835-0456'),
		(4575, 11, 'Kristian', 'Roberts', 'k.roberts@randatmail.com', 'Absolute Banks', '576-502-9047'),
		(4567, 13, 'Adam', 'Thompson', 'a.thompson@randatmail.com','New Heights Financial Inc', '264-181-1943'),
		(4571, 12, 'Daisy', 'Turner', 'd.turner@randatmail.com', 'Absolute Banks', '339-691-7123'),
		(4567, 10, 'Walter', 'Murray', 'w.murray@randatmail.com','New Heights Financial Inc', '890-301-5142');


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
INSERT INTO Payments (PassengerID, DriverID, BankName, AccountNumber, RoutingNumber, AmountTransferin, AmountTransferOut)
VALUES ('Chase Bank', '11213145', '00004563', '234', '0'),
		('Chase Bank', '55818947', '00004563', '384', '0'),
		('America Bank', '11123456', '000003245', '104', '0'),
		('America Bank', '41123452', '000003245', '104', '0'),
		('America Bank', '71123454', '000003245', '104', '0'),
		('Chase Bank', '11111235', '00004563', '0', '65'),
		('Chase Bank', '51111237', '00004563', '0', '165'),
		('American Bank', '11246874', '000003295', '0', '543')
		('Chase Bank', '90438012', '00004563',, '345','0')
		('Absolute Banks','79864924','440485968', , '223','0')
		('Evolution Holdings', '74231845','542235171', '0','234')
		('Elite Bank System', '49491745','579231889', '0','214')
		('Absolute Banks', '517712344', '86162939', '0','78')
		('Absolute Banks', '687798926', '86162939', '0','124')
		('Absolute Banks', '481222339', '86162939', '0','98')
		('Commonwealth Bank Corp', '35450615','895063090', '0','34')
		('New Heights Financial Inc', '517016545', '01523098', '0','235')
		('New Heights Financial Inc', '468514439', '01523098', '0','102')
		('New Heights Financial Inc', '251037165', '01523098', '0','285');


-- Adding data into the trip table 
INSERT INTO TripNumber(TransportID, TripMillage, AmountPerMile)
VALUES ('34', ''),
		('57',''),
		('123', ''),
		('654','');
