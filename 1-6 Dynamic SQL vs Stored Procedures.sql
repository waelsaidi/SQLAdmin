USE [AdventureWorks2016]
GO
SET STATISTICS IO, TIME ON
GO

CREATE OR ALTER Procedure [dbo].[p_sel_product_info] @name VARCHAR(50)
as
Begin
SELECT Name, ProductNumber, ListPrice AS Price
FROM Production.Product
WHERE name = @name 
ORDER BY Name ASC
END

EXEC p_sel_product_info @name = 'Cable Lock'

GO
DECLARE @name VARCHAR(50)
SELECT @name = 'Cable Lock'
DECLARE @Sql NVARCHAR(MAX)
SELECT @sql = 'SELECT Name, ProductNumber, ListPrice AS Price FROM Production.Product WHERE name = '+@name+' ORDER BY Name ASC'
EXEC sp_executesql @stmt=@Sql

