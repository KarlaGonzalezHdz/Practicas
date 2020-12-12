SELECT ProductId AS Identificador, ProductName as NombreProducto, UnitPrice as PrecioUnitario
From Products WHERE UnitPrice = (SELECT MIN(UnitPrice) from Products);

SELECT ProductID as ID,ProductName as Nombre, UnitPrice as Precio_Unitario
FROM Products WHERE UNITPRICE = (SELECT MAX(UnitPrice) From Products)

