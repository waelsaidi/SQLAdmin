CREATE TABLE Employees
    (
      EmployeeID integer NOT NULL IDENTITY(1, 1) ,
      EmployeeName VARCHAR(50) ,
      EmployeeAddress VARCHAR(50) ,
      MonthSalary NUMERIC(10, 2)
      PRIMARY KEY CLUSTERED (EmployeeID)
    )
GO


CREATE TABLE EmployeesAudit
    (
      AuditID INTEGER NOT NULL IDENTITY(1, 1) ,
      EmployeeID INTEGER ,
      EmployeeName VARCHAR(50) ,
      EmployeeAddress VARCHAR(50) ,
      MonthSalary NUMERIC(10, 2) ,
      ModifiedBy VARCHAR(128) ,
      ModifiedDate DATETIME ,
      Operation CHAR(1) 
      PRIMARY KEY CLUSTERED ( AuditID )
    )
GO

-- Trigger

CREATE TRIGGER TR_Audit_Employees on dbo.Employees

  For Insert

AS
  DECLARE @login_name varchar(128)
  select @login_name=login_name
  from sys.dm_exec_sessions
  where session_id=@@SPID

 -- select @@SPID
 Begin

  

INSERT INTO [dbo].[EmployeesAudit]
           ([EmployeeID]
           ,[EmployeeName]
           ,[EmployeeAddress]
           ,[MonthSalary]
           ,[ModifiedBy]
           ,[ModifiedDate]
           ,[Operation])
     select I.EmployeeID,
	 I.EmployeeName,
	 I.EmployeeAddress,
	 I.MonthSalary,
	 @login_name,
	 GETDATE(),
	 'I'
	 from inserted I

	 END



--- Test

BEGIN TRANSACTION
INSERT  INTO dbo.Employees
        ( EmployeeName ,
          EmployeeAddress ,
          MonthSalary
        )
        SELECT  'zz' ,
                'dsda' ,
                10000
        UNION ALL
        SELECT  'Essaoud Zeineb' ,
                'Lac 3' ,
                6000
SELECT  *
FROM    dbo.Employees
SELECT  *
FROM    dbo.EmployeesAudit
ROLLBACK TRANSACTION
