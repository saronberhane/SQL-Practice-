-- Creating a View for each table 

    CREATE VIEW DriversView AS 
	SELECT FirstName, LastName, EmailAddress, PhoneNumber 
	FROM Drivers
	WHERE FirstName IS NOT NULL;

	SELECT *
	FROM  DriversView;


	CREATE VIEW TransportsView AS 
	SELECT Transports.LocationPickUp, Transports.LocationDropOff, Transports.TimePickUp, Transports.TimeDropOff
	FROM Transports;

	SELECT *
	FROM TransportsView;


	CREATE VIEW	PassengersView AS 
	SELECT FirstName, LastName, PhoneNumber
	FROM Passengers
	WHERE FirstName IS NOT NULL;

	SELECT *
	FROM PassengersView;


	CREATE VIEW TripView AS 
	SELECT TripMillage, AmountPerMile
	FROM TripNumber
	WHERE AmountPerMile IS NOT NULL;

	SELECT *
	FROM TripView;

-- Creating a Function for calculating the amount transferred in and out 
	CREATE FUNCTION AmountTransferInOut (@int1 AS INT, @int2 AS INT)
	RETURNS INT
	AS
	BEGIN
	RETURn (@int1 - @int2)
	END


-- ------------------------------------------------------------------------------------------------------------------------------------------
 -- a view that uses join on

    CREATE VIEW PassTransView AS
    SELECT Passengers.FirstName, Passengers.LastName, Transports.LocationPickUp
    FROM Passengers
    JOIN Transports
    ON Passengers.TransportID  = Transports.TransportID;

    SELECT *
    FROM PassTransView;
