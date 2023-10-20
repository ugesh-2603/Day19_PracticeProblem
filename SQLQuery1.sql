CREATE DATABASE MyStore;

USE MyStore;

CREATE TABLE Customer1 (
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName NVARCHAR(50),
    Phone NVARCHAR(15),
    Address NVARCHAR(100)
);


INSERT INTO Customer1 (CustomerName, Phone, Address)
VALUES
    ('Kumar', '1234567890', '123 dhkil'),
    ('Hari ', '9876543210', '456 Elm mask'),
    ('Kiruba', '1346798426', '789 ou colony');

	ALTER TABLE Customer1
ADD Country NVARCHAR(50),
    Salary DECIMAL(10, 2),
    Pincode NVARCHAR(10);

	select *from Customer1;

	UPDATE Customer1
SET Country = 'US',
    Salary = 40000.00,
    Pincode = '500060'
WHERE CustomerName = 'Hari';



UPDATE Customer1
SET Salary = 55000.00
WHERE CustomerName = 'Kumar';

SELECT Country, COUNT(*) AS NumberOfCustomers
FROM Customer1
GROUP BY Country;

SELECT
    MAX(Salary) AS MaxSalary,
    MIN(Salary) AS MinSalary,
    SUM(Salary) AS TotalSalary,
    AVG(Salary) AS AvgSalary
FROM Customer;

CREATE TABLE Orders (
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(50),
    Quantity INT,
    Rating INT
);

SELECT * FROM Customer1;

SELECT * FROM Orders;

drop table Orders;