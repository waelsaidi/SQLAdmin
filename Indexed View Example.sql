
-- Creating an Indexed View

-- Let's create a view
-- Note: The view must include schemabinding
CREATE VIEW vEmployee
WITH SCHEMABINDING
as
SELECT BusinessEntityID,FirstName, LastName
FROM Person.Person

-- test view
select * from vEmployee

--  storage space  
EXEC sp_spaceused N'dbo.vEmployee'

--  create a unique clustered index
CREATE UNIQUE CLUSTERED INDEX [IX_vEmployee]
ON dbo.vEmployee(BusinessEntityID)





