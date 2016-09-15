--Dafesty DataBase

--Select all--
SELECT * FROM Customers  -- select all 

SELECT Customers.CustomerID , Customers.CustomerName FROM Customers -- Select column

SELECT c.CustomerID, c.CustomerName FROM Customers c -- Using Alias

--DISTINCT--

SELECT DISTINCT CountryCode FROM Customers -- DISTINCT data not duplicate

SELECT * FROM Customers WHERE CountryCode = 'SIN' --WHERE conditionally select data in a customers table

--NOT--

SELECT * FROM Customers WHERE NOT (CountryCode = 'SIN') --NOT condition can be specified

--AS--

SELECT Customers.CustomerID AS ID, Customers.CustomerName AS NAME FROM Customers -- Alias redefines the result set column name

--AND--

SELECT * FROM Customers WHERE CountryCode = 'SIN' AND CustomerID >= 2000 -- AND operator allowed to test condition

--OR--

SELECT * FROM Customers WHERE CountryCode = 'SIN' OR CustomerID >= 2000 -- OR operator 

--BETWEEN-

SELECT * FROM Customers WHERE CustomerID BETWEEN 1000 AND 2000 -- BETWEEN show between 1000 and 2000 records include 1000 and 2000

SELECT * FROM Customers WHERE NOT (CustomerID BETWEEN 1000 AND 2000) -- BETWEEN show not between 1000 and 2000 records start with 2001

--LIKE--

SELECT * FROM Customers WHERE customerName LIKE  'Tan%' -- lIKE 'Tan%' use to test start with TAN eg. Tan Choon Heong, Tan Wei Wei

SELECT * FROM Customers WHERE customerName LIKE  '%Tan' -- lIKE '%Tan' use to test end with TAN eg. Lou Anna Tan, Cheryl Tan

SELECT * FROM Customers WHERE customerName LIKE  '%Tan%' -- lIKE '%Tan%' use to test all when it saw with TAN eg. Lou Anna Tan, Cheryl Tan, Tan Choon Heong, Constance Yong, Tan Wei Wei

--IN-- 

SELECT * FROM Customers WHERE CountryCode IN ('SIN','IND') --IN specifies a set of valid values get all the result of CountryCode which match with SIN or IND

--IN-- Sub Query

SELECT * FROM Customers c WHERE c.CustomerID IN (SELECT i.CustomerID FROM IssueTran i)

 -- DISTINCT IN COUNT--

SELECT * FROM Customers WHERE PostalCode IN (SELECT DISTINCT PostalCode FROM Customers) -- Select all columns distinct with postalCode // IN use for multi records result return

SELECT * FROM Customers WHERE PostalCode = (SELECT PostalCode FROM Customers WHERE PostalCode = 090026) -- result 1 record we can use = 

SELECT COUNT(*) FROM Customers WHERE PostalCode IN (SELECT DISTINCT PostalCode FROM Customers) -- Distinct count no.

--NULL--

SELECT * FROM Customers WHERE EmailAddress IS NULL -- IS NULL is use to retrieving rows whereby the value of the Column is null

--ORDER BY--

SELECT * FROM Customers ORDER BY CountryCode -- ORDER BY specifies rows retrieved are to be sort by Country code default is ASCENDING

SELECT * FROM Customers ORDER BY CountryCode DESC --sort by Country code Descending

--COUNT--

SELECT COUNT(*) AS TOTAL FROM Customers -- return the numbers of rows that satisfy the query command

--AVERAGE--

SELECT AVG(Age) AS AvgAge FROM Employees -- average function calculate the average age of all employees
 










