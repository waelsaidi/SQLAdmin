USE AdventureWorks2016 
SET STATISTICS IO, TIME ON

SELECT City, StateProvinceID, PostalCode
FROM Person.Address
WHERE StateProvinceID = 1;
GO

