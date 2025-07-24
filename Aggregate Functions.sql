--The number of employees from London
SELECT 
	  COUNT (City) AS 'CITY'
FROM Employees
WHERE City = 'LONDON';

--The youngest and the oldest employees
SELECT 
	 MIN (BirthDate) AS 'OLD'
	,MAX (BirthDate) AS 'YUONG'
FROM Employees;

--GROUP BY
SELECT 
	  City 
	, Region 
	, COUNT (*) AS 'KAMOT'
FROM Employees
GROUP BY City ,Region
ORDER BY City;
--
SELECT 
	  City 
	 , COUNT (*) AS 'KAMOT'
FROM Employees
GROUP BY City 
ORDER BY City;

SELECT 
	OrderID 
	, SUM (UnitPrice * Quantity) AS 'PRICE'
FROM [Order Details]
GROUP BY OrderID 
ORDER BY 'PRICE' DESC;

SELECT 
	OrderID
	, SUM(UnitPrice * Quantity) AS 'PRICE' 
FROM [Order Details]
GROUP BY OrderID
HAVING  SUM(UnitPrice * Quantity) > 4000 
ORDER BY 'PRICE' DESC
















 
