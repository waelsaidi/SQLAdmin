CREATE TABLE Employees
    (
      EmployeeID integer NOT NULL IDENTITY(1, 1) ,
      EmployeeName VARCHAR(50) ,
      EmployeeAddress VARCHAR(50) ,
      MonthSalary NUMERIC(10, 2)
      PRIMARY KEY CLUSTERED (EmployeeID)
    )
GO
