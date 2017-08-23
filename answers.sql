CREATE TABLE Person (
  PersonID INTEGER PRIMARY KEY AUTOINCREMENT,
  Name TEXT,
  Age INTEGER,
  Height INTEGER,
  City TEXT,
  FavoriteColor TEXT
); 

INSERT INTO Person
(Name, Age, Height, City, FavoriteColor)
VALUES
('Alex', 20, 179, 'Bend', 'Purple');
SELECT *
FROM Person ;

SELECT * 
FROM Person
ORDER BY Height DESC; 

SELECT *
FROM Person
ORDER BY Height ASC; 

SELECT *
FROM Person
ORDER BY Age DESC; 

SELECT *
FROM Person
WHERE Age > 20; 

SELECT * 
FROM Person
WHERE Age = 18; 

SELECT * 
FROM Person 
WHERE Age < 20 OR Age > 30; 

SELECT * 
FROM Person
WHERE Age != 27; 

SELECT * 
FROM Person 
WHERE FavoriteColor != 'Red'; 

SELECT * 
FROM Person 
WHERE FavoriteColor IS NOT 'Red' 
AND FavoriteColor IS NOT 'Blue'; 

SELECT * 
FROM Person
WHERE FavoriteColor IN ('Orange', 'Green'); 

SELECT *
FROM Person
WHERE FavoriteColor IN ('Orange', 'Green', 'Blue'); 

SELECT * 
FROM Person
WHERE FavoriteColor IN ('Yellow', 'Purple'); 

CREATE TABLE Orders (
  PersonID INTEGER PRIMARY KEY AUTOINCREMENT,
  ProductName TEXT,
  ProductPrice FLOAT,
  Quantity INTEGER
); 

INSERT INTO Orders
(ProductName, ProductPrice, Quantity)
VALUES
('RAM', 120.99, 2); 

SELECT sum(ProductPrice) 
FROM Orders
WHERE PersonID = 3; 

SELECT * 
FROM Artist;
INSERT INTO Artist
(Name)
VALUES 
('Dance Gavin Dance'); 

SELECT *
FROM Artist
ORDER BY Name DESC
LIMIT 10; 

SELECT * 
FROM Artist 
ORDER BY Name ASC
LIMIT 5; 

SELECT * 
FROM Artist
WHERE Name LIKE ('Black%'); 

SELECT * 
FROM Artist
WHERE Name LIKE ('%Black%'); 

SELECT FirstName, LastName
FROM Employee
WHERE City = 'Calgary'; 

SELECT FirstName, LastName, MAX(BirthDate)
FROM Employee; 

SELECT FirstName, LastName, MIN(BirthDate)
FROM Employee; 

SELECT count(*)
FROM Employee
WHERE City = 'Lethbridge'; 

SELECT count(*)
FROM Invoice
WHERE BillingCountry = 'USA'; 

SELECT MAX(Total)
FROM Invoice; 

SELECT MIN(Total)
FROM Invoice; 

SELECT *
FROM Invoice
WHERE Total > 5; 

SELECT count(*)
FROM Invoice
WHERE Total < 5; 

SELECT count(*)
FROM Invoice
WHERE BillingState IN ('CA', 'TX', 'AZ'); 

SELECT AVG(Total)
FROM Invoice; 

SELECT SUM(Total)
FROM Invoice; 