Вывести сред/стоимость товаров из категорий 1, 2, 5, у которых название начинается с буквы t
SELECT
AVG(Price) AS avg_price
FROM Products
Where CategoryID IN (1, 2, 5)
AND
ProductName LIKE "T%"

Посчитать стоимость заказа 10248
SELECT
SUM(Products.Price) AS sum_price
FROM OrderDetails
JOIN Products ON Products.ProductID = OrderDetails.ProductID
Where OrderID = 10248

Вывести ко-во товаров с ценой от 10 до 250 EUR
SELECT
COUNT(*) as count_Products
FROM Products
Where
Price BETWEEN 10 AND 250

Вывести сумму, на которую было отправлено товаров клиентам в Germany
SELECT
SUM(Products.Price * OrderDetails.Quantity) AS sum_price
FROM OrderDetails
JOIN Orders ON Orders.OrderID = OrderDetails.OrderID
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
JOIN Products ON Products.ProductID = OrderDetails.ProductID
Where Customers.Country LIKE "Germany"

С помощью инструмента онлайн-проектирования опишите схему БД "чат поддержки" (базовые сущности и характеристики)

https://dbdiagram.io/d/65b03401ac844320ae91a519