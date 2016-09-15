--SQL Workshop

-- Database : Northwind

-- Question 1

--1) a. List all details of all Shippers that the company is dealing with.

SELECT * FROM Shippers

--1) b. List all details of Shippers with the output presented in ascending order of shipper names.

SELECT * FROM Shippers ORDER BY CompanyName

--2) a. List all employees - you need to display only the details of their First Name, Last Name, Title, Date of birth and their city of residence.

SELECT FirstName, LastName, Title, BirthDate, City FROM Employees

--2) b. Based on the designations (Titles) available in the employees table, can you extract the designation list?

SELECT Title FROM Employees

--3) Retrieve the details of all orders made on 19 May 1997

SELECT * FROM Orders WHERE OrderDate = '1997-05-19'

--4) Retrieve details of all customers that are located in the cities of London or Madrid.

SELECT * FROM Customers WHERE City IN ('London','Madrid')

SELECT * FROM Customers WHERE City = 'London' OR City = 'Madrid'

--5) List all customers (Customer number and names) who are located in UK. The list should be produced in alphabetical order of customer names.

SELECT CustomerID, CompanyName FROM Customers WHERE Country = 'UK'

--6) Provide a list of Orders (Order IDs and order dates) made by customer whose ID is 'Hanar'.

SELECT OrderID, OrderDate FROM Orders WHERE CustomerID = 'Hanar'

/* 7) List the Fully Qualified Names of All Northwind Employees as a single column.
      Fully qualified Names should look like this: Dr. Venkat Raman OR Ms Ester Tan, where Ms is the Title of Courtesy Ester is first name and Tan is last name.
	  Hint: You may need to use string concatenation.
*/

SELECT (TitleOfCourtesy+FirstName+LastName) AS [Fully Qualified Names] FROM Employees ORDER BY LastName

/* 8) List all Orders (Order number and date) of the orders made by the Custoemr "Maison Dewey" (column: company name).
      Note: Maison Dewey is the name of the customer.
*/

SELECT OrderID, OrderDate FROM Orders WHERE CustomerID IN (SELECT CustomerID FROM Customers WHERE CompanyName = 'Maison Dewey')

--9) Retriece the details of all Products' having the word "lager" in the product name.

SELECT * FROM Products WHERE ProductName LIKE '%lager%'

--10) Receive the Customer IDs and contact names of all customers who have yet to order any products.

SELECT CustomerID, ContactName FROM Customers WHERE NOT CustomerID IN (SELECT CustomerID FROM Orders)

SELECT c.CustomerID, c.ContactName FROM Customers c left join Orders o on c.CustomerID = o.CustomerID where o.CustomerID is null

--11) Display the average product price.

SELECT AVG(UnitPrice)  AS [Average Product Price] FROM Products

--12) Prepare a list of cities where customers reside in. The list should not contain any duplicate cities.

SELECT DISTINCT City FROM Customers WHERE City IS NOT NULL

--13) Retriece the number of customers who has made orders.

SELECT COUNT(CustomerID) AS [Number of customers] FROM Customers WHERE CustomerID IN (SELECT CustomerID FROM Orders)

SELECT COUNT(*) AS [Number of customers] FROM Customers WHERE CustomerID IN (SELECT CustomerID FROM Orders)

SELECT COUNT(DISTINCT CustomerID) AS [Number of customers] FROM Orders

--14) Retrieve the company name and phone number of custoemrs that do not have any fax number captured.

SELECT CompanyName, Phone FROM Customers WHERE fax IS NULL

--15) Retrieve the total sales made. Assume sales is equal to unit price * quantity.

SELECT UnitPrice * Quantity AS SALES FROM [Order Details]

--16) List order ids made by customer 'Alan Out' and 'Blone Coy'

SELECT  OrderID FROM Orders WHERE CustomerID IN (SELECT CustomerID FROM Customers WHERE CompanyName IN ('Alan Out', 'Blone Coy'))

