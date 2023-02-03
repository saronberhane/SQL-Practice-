
-- Initiate the Database 
CREATE DATABASE Transportation;


-- creating different tables for the data 
CREATE TABLE Payments(
	 PaymentID int NOT NULL IDENTITY(101,1) PRIMARY KEY,
	 BankName varchar(50) NOT NULL,
	 AccountNumber varchar(50) NOT NULL,
	 RoutingNumber varchar(50) NOT NULL,
     AmountTransferIn  varchar(50) NOT NULL,
	 AmountTransferOut varchar(100) NOT NULL);

-- Adding data into the payment table 
INSERT INTO Payments (BankName, AccountNumber, RoutingNumber, AmountTransferIn, AmountTransferOut )
VALUES ('Chase Bank', '11213145', '00004563','68','0'), --101
		('Chase Bank', '55818947', '00004563','114','0'), --102
		('America Bank', '11123456', '000003245','64','0'), --103
		('America Bank', '41123452', '000003245','128','0'), --104
		('America Bank', '71123454', '000003245','0','168'), --105
		('Chase Bank', '11111235', '00004563','0','164'), --106
		('Chase Bank', '51111237', '00004563','0','214'), --107
		('American Bank', '11246874', '000003295','0','228'); --108

CREATE TABLE Drivers(
	DriverID int NOT NULL IDENTITY(4543,4) PRIMARY KEY,
	PaymentID int REFERENCES Payments(PaymentID) NOT NULL,
	FirstName varchar (50) NOT NULL,
	LastName varchar (50) NOT NULL,
	DateOfBirth varchar (50) NOT NULL,
	EmailAddress varchar (50) NOT NULL,
	PhoneNumber varchar (50) NOT NULL);

-- Adding data into the drivers table 
INSERT INTO Drivers (PaymentID, FirstName, LastName, DateOfBirth, EmailAddress, PhoneNumber)
VALUES (101, 'Sam', 'Ham', '02/12/2000', 'Samham@gmail.com', '345-231-1234'), --4543
		(103, 'Max', 'Tax', '03/22/1994', 'Maxtax@gmail.com', '455-231-3216'), --4547
		(102, 'Sara', 'Tom', '06/12/1932', 'SaraTom@gmail.com', '212-231-8768'), --4551
		(104, 'Tommy', 'Ham', '02/12/2000', 'Tommyham@gmail.com', '543-231-1234'); --4555

CREATE TABLE Transports(
	 TransportID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
     DriverID int REFERENCES Drivers(DriverID) NOT NULL,
	 LocationPickUp varchar (50) NOT NULL,
	 LocationDropOff varchar (50) NOT NULL,
	 TimePickUp varchar (50) NOT NULL,
	 TimeDropOff varchar (100) NOT NULL);

-- Adding data into the Transports table 
INSERT INTO Transports (DriverID, LocationPickUp, LocationDropOff, TimePickUp, TimeDropOff)
VALUES (4543, '337 Russell St, Hadley MA 1035', '91 Memorial Dr, Chicopee MA 1020', '07:30', '10:30'), 
		(4551, '295 Plymouth Street, Halifax MA 2338', '1775 Washington St, Hanover MA 2339', '08:40', '12:20'),
		(4547, '1775 Washington St, Hanover MA 2339', '20 Soojian Dr, Leicester MA 1524', '13:50', '15:32'),
		(4555, '11 Jungle Road, Leominster MA 1453', '301 Massachusetts Ave, Lunenburg MA 1462', '04:20', '06:10');



CREATE TABLE Passengers(
	 PassengerID int NOT NULL IDENTITY(5549,3) PRIMARY KEY,
	 DriverID int REFERENCES Drivers(DriverID) NOT NULL,
	 PaymentID int REFERENCES Payments(PaymentID) NOT NULL,
     TransportID int REFERENCES Transports(TransportID) NOT NULL,
	 FirstName varchar (50) NOT NULL,
	 LastName varchar (50) NOT NULL,
	 DateOfBirth varchar (50) NOT NULL,
	 EmailAddress varchar (50) NOT NULL,
	 PhoneNumber varchar (50) NOT NULL); 

-- Adding data into the individuals table 
INSERT INTO Passengers (DriverID, PaymentID, TransportID, FirstName, LastName, DateOfBirth, EmailAddress, PhoneNumber)
VALUES (4543, 105, 1, 'Sandra', 'Ham', '07/25/1995', 'SandraHam@gmail.com',  '345-231-1234'), 
		(4547, 106, 3,  'Lexy', 'Tru', '08/22/1994', 'LexyTru@gmail.com',  '455-231-3216'),
		(4551, 108, 2, 'Alex', 'Tom', '06/17/1932', 'AlexTom@gmail.com', '212-231-8768'),
		(4555, 107, 4, 'Noel', 'Ham', '04/02/2000', 'Noelham@gmail.com',  '543-231-1234');





CREATE TABLE TripNumber(
	TripNumberID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	TransportID int REFERENCES Transports(TransportID) NOT NULL,
	TripMillage varchar(50) NOT NULL,
	AmountPerMile AS (TripMillage * 2));

-- Adding data into the trip table 
INSERT INTO TripNumber(TransportID, TripMillage)
VALUES (1, '34'), --1
		(2, '57'), --2
		(3, '23'),  --3
		(4, '64'); --4

UPDATE Paymentss
    SET AmountTransferIn = (
        SELECT(TripNumber.AmountPerMile) AS AmountTransferIn
        FROM TripNumber
        
    )