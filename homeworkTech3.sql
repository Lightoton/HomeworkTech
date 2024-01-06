1.
SELECT 
ProductName,
Price,
Categories.CategoryName,
Suppliers.SupplierName
FROM Products
JOIN Categories on Categories.CategoryID = Products.CategoryID
JOIN Suppliers on Suppliers.SupplierID = Products.SupplierID
2.
SELECT 
Country 
FROM Suppliers
JOIN Products ON Suppliers.SupplierID = Products.SupplierID
JOIN Categories ON Categories.CategoryID = Products.CategoryID
WHERE Categories.CategoryName = "Seafood"
3.
SELECT
ProductName
FROM Products
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
JOIN Categories ON Categories.CategoryID = Products.CategoryID
WHERE Categories.CategoryName = "Beverages"
AND 
Suppliers.Country = "USA"
ORDER BY Price DESC
LIMIT 2
4.
SELECT
ProductName,
Price AS USD
FROM Products
JOIN Suppliers ON Suppliers.SupplierID = Products.SupplierID
WHERE
Suppliers.Country = "USA"
ORDER BY Price DESC
LIMIT 1
5.
БД это база данных(организованная коллекция данных), а СУБД это ПО с помощью которого мы взаимодействуем с базой данных.
