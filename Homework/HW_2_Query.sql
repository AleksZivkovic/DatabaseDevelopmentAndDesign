USE [SEDC]
GO

SELECT * FROM Employees
WHERE FirstName = 'Goran';
GO

SELECT * FROM Employees
WHERE LastName LIKE 'S%';
GO 

SELECT * FROM Employees 
WHERE DateOfBirth > '01.01.1988';
GO

SELECT * FROM Employees 
WHERE Gender = 'M';
GO
--SELECT * FROM Employees 

SELECT * FROM Employees 
WHERE HireDate BETWEEN '1998-01-01' AND '1998-01-31';
GO

SELECT * FROM Employees
WHERE LastName LIKE 'A%' AND HireDate BETWEEN '1998-01-01' AND '1998-01-01';
GO