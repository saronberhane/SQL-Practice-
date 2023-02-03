-- a calaculation that also has a function 

SELECT  Payments.AmountTransferOut, TripNumber.AmountPerMile, ( Payments.AmountTransferOut -TripNumber.AmountPerMile) AS Extracharge 
FROM Payments
JOIN TripNumber
ON Payments.TripNumberID = TripNumber.TripNumberID
GROUP BY Payments.AmountTransferOut, TripNumber.AmountPerMile
HAVING Extracharge > 0;


CREATE FUNCTION PaymentsFunction(@num1 AS int, @num2 AS int)
RETURNS int
BEGIN
  RETURN  @num1 + @num2
END;

SELECT PaymentsFunction(Payments.AmountTransferOut, TripNumber.AmountPerMile) AS Extracharge
FROM Payments
JOIN TripNumber
ON Payments.TripNumberID = TripNumber.TripNumberID;
