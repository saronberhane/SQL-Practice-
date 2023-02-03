-- Initiate the Database 
CREATE DATABASE Transportation;


-- creating different tables for the data 

CREATE TABLE Passengers(
	 PassengerID int NOT NULL IDENTITY(5549,3) PRIMARY KEY,
	 DriverID int REFERENCES Drivers(DriverID) NOT NULL,
	 TransportID int REFERENCES Transports(TransportID) NOT NULL,
	 FirstName varchar (50) NOT NULL,
	 LastName varchar (50) NOT NULL,
	 DateOfBirth varchar (50) NOT NULL,
	 EmailAddress varchar (50) NOT NULL,
	 PaymentMethod varchar (100) NOT NULL,
	 PhoneNumber varchar (50) NOT NULL); 

CREATE TABLE Transports(
	 TransportID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	 Payments int REFERENCES Payments(PaymentID) NOT NULL,
	 LocationPickUp varchar (50) NOT NULL,
	 LocationDropOff varchar (50) NOT NULL,
	 TimePickUp varchar (50) NOT NULL,
	 TimeDropOff varchar (100) NOT NULL);

CREATE TABLE Payments(
	 PaymentID int NOT NULL IDENTITY(101,1) PRIMARY KEY,
	 PassengerID int REFERENCES Passengers(PassengerID) NOT NULL,
	 DriverID int REFERENCES  Drivers( DriverID) NOT NULL,
	 BankName varchar(50) NOT NULL,
	 AccountNumber varchar(50) NOT NULL,
	 RoutingNumber varchar(50) NOT NULL,
	 AmountTransferIn  varchar(50) NOT NULL,
	 AmountTransferOut varchar(100) NOT NULL);

CREATE TABLE Drivers(
	DriverID int NOT NULL IDENTITY(4543,4) PRIMARY KEY,
	FirstName varchar (50) NOT NULL,
	LastName varchar (50) NOT NULL,
	DateOfBirth varchar (50) NOT NULL,
	EmailAddress varchar (50) NOT NULL,
	PaymentMethod varchar (100) NOT NULL,
	PhoneNumber varchar (50) NOT NULL);

CREATE TABLE TripNumber(
	TripNumberID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	TransportID int REFERENCES Transports(TransportID) NOT NULL,
	TripMillage varchar(50) NOT NULL,
	AmountPerMile varchar (50) NOT NULL);


