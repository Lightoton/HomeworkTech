2.
SELECT 
ProductName,
Price
FROM Products
Where 
	Price >= 20
    AND
    Price <= 150
3.
SELECT
Country 
FROM Suppliers
Where 
	Country != "USA"
4.
SELECT
*
FROM Suppliers
Where 
	SupplierID = 1
5.
SELECT
ContactName,
Country
FROM Customers
Where
	Country != "USA"
    AND
    Country != "France "
6.   
SELECT
Country,
City,
Address
FROM Suppliers
Where
	Country != "Japan"
    AND
    Country != "Brazil"
