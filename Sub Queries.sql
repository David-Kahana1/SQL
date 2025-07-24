--
SELECT 
	EmployeeID
	,CONCAT (FirstName, ' ' ,LastName) AS 'FULL NAME'
	,Country
FROM Employees
WHERE COUNTRY = (SELECT Country
				FROM Employees
				WHERE EmployeeID = 1) AND (FirstName != 'NANCY');


--
SELECT 
	EmployeeID
	,CONCAT (FirstName, ' ' ,LastName) AS 'FULL NAME'
	,Country
	FROM Employees
WHERE COUNTRY = (SELECT Country
				 FROM Employees
				 WHERE EmployeeID = 1) AND (FirstName <> 'NANCY');


--
SELECT 
	ProductName
	, CategoryID
	, ProductName
FROM Products
WHERE CategoryID IN (SELECT CategoryID
					 FROM Products
					 WHERE CategoryID = 5);


--The number of orders with more than 1200 items
SELECT ProductID
FROM [Order Details]
GROUP BY ProductID
HAVING SUM (Quantity) > 1200


----Product name and quantity 
SELECT ProductID 
 ,SUM (Quantity) AS 'KAMOT'
FROM [Order Details]
GROUP BY ProductID 
HAVING ProductID IN (56,59,31,60) 


--Product name and number
SELECT 
	ProductName
	, ProductID
FROM Products
WHERE ProductID IN (SELECT ProductID
					FROM [Order Details]
					GROUP BY ProductID
					HAVING SUM (Quantity) > 1200)


			 