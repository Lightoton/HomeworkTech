--Вывести заказы со стоимостью от 5000 EUR (проекция: номер_заказа, стоимость_заказа)
SELECT 
 OrderDetails.OrderID,
 SUM(Products.Price*OrderDetails.Quantity) AS Price_Order
FROM OrderDetails
JOIN Products ON Products.ProductID = OrderDetails.ProductID
GROUP BY OrderDetails.OrderID
HAVING Price_Order > 5000
--Вывести страны, в которые было отправлено 3 и более заказов
Customers.Country
FROM OrderDetails
JOIN Orders ON Orders.OrderID = OrderDetails.OrderID
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Country
HAVING COUNT(Orders.OrderID) > 3
--Вывести ТОП-10 самых продаваемых товаров (проекция: название_товара, ко_во_проданных_единиц)
SELECT
Products.ProductName,
COUNT(Products.ProductID) AS total_orders
FROM Products
JOIN OrderDetails ON OrderDetails.ProductID = Products.ProductID
GROUP BY Products.ProductName
ORDER BY total_orders DESC
LIMIT 10
--Расчитать З/П менеджеров (ставка - 5% от суммы проданных заказов)
SELECT 
    Employees.EmployeeID,
    SUM(Products.Price * 0.05) AS Salary
FROM Employees
JOIN Orders ON Orders.EmployeeID = Employees.EmployeeID
JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Employees.EmployeeID;