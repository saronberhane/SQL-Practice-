 -- a view that uses join on

    CREATE VIEW PassTransView AS
    SELECT Passengers.FirstName, Passengers.LastName, Transports.LocationPickUp
    FROM Passengers
    JOIN Transports
    ON Passengers.TransportID  = Transports.TransportID;

    SELECT *
    FROM PassTransView;
