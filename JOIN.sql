/*
INNER JOIN / JOIN
*/
SELECT * FROM Orders;
SELECT * FROM Customers;

SELECT * 
FROM Orders JOIN Customers ON ORDERS.CustomerID = Customers.CustomerID;

SELECT 
  O.OrderID
, C.CustomerID
, C.City
, O.OrderID
FROM Orders AS O
JOIN Customers AS C ON O.CustomerID = C.CustomerID
WHERE C.City = 'BERLIN'
ORDER BY C.City;

SELECT
  CompanyName
, City
, ContactName
FROM Customers;

SELECT
EmployeeID
, City
, Title
FROM Employees;

SELECT
  C.CompanyName
, C.City
, C.ContactName
, E.EmployeeID
, E.City
FROM Customers AS C 
LEFT JOIN Employees AS E ON C.City = E.City;