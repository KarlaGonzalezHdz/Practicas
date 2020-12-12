use NORTHWND
--BETWEEN

--1
SELECT ProductID
From Products
Where ProductID BETWEEN '3' AND '65';

--2
SELECT ProductID
FROM Products
WHERE ProductID not BETWEEN '11' AND '25';

-- IN , LIKE
-- 1 Funcion IN
Select * FROM Employees
WHERE LastName
IN ('Davolio' , 'King')

--2 funcion NOT in
Select * FROM Employees
WHERE LastName
not IN ('Davolio', 'King')

SELECT LastName from Employees

--3 Que contenta la letra A
select * from Employees where LastName Like '%A%'

--4  Que inicie con la letra C Y F
select * from Employees where LastName Like '[CF]%'

--5 Tenga como inicial esa letra
select * from Employees where LastName Like '[KSD]%'

--6 Termine con una letra
select * from Employees where LastName Like '%N'


--7 Inicie con una letra
select * from Employees where LastName Like 'D%'

--8 Una letra y despues la letra indicada
SELECT * FROM Employees;

SELECT * FROM Employees
WHERE LastName LIKE 'D_%';

SELECT * FROM Employees
WHERE LastName LIKE '__1%';

-- 9 Que no inicie con una letra
select * from Employees where LastName not LIKE 'D%'

--10 Que inicie entre la letra C Y F
select * from Employees where LastName like '[C-F]%'


-- ALIAS
SELECT A1.ProductName Producto, SUM(A1.UnitPrice) "Total Sales"
FROM Products A1
GROUP BY A1.ProductName

--AAAAAA--
--CONCATENACION
SELECT * FROM Employees;
SELECT REGION + ' ' + City FROM Employees
WHERE Region = 'WA';

select * FROM Customers
select *  FROM Orders

--Consultad de dos tablas
SELECT distinct Customers.CustomerID , Orders.OrderID
from Customers
inner join Orders on Customers.CustomerID = Orders.CustomerID

SELECT distinct Customers.CustomerID, Orders.OrderID
From Customers
left join Orders on Customers.CustomerID = Orders.CustomerID

SELECT distinct  Custumers.CustomerID , Orders.OrderID
FROM Customers
right join Orders on Customers.CustomerID = Orders.CustomerID


SELECT CompanyName from Customers
where CustomerID IN (select CustomerID
from Orders
where OrderDate Between '01-01-1998' and '12-31-1998')


