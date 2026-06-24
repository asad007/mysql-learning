-- Week 3, Day 13
-- Topic: LEFT JOIN and RIGHT JOIN
USE phone_shop_orders;

-- A customer with no orders
INSERT INTO Customers (Name, Phone, City) VALUES ('Mehedi Islam', '01644000444', 'Khulna');
 SELECT
	c.Name, c.City, o.Phone_Model
FROM Customers AS c     -- This table is called LEFT Table which is after FROM
INNER JOIN Orders AS o ON c.ID = o.Customer_ID;

-- ALL customers, even those with no orders
SELECT
	c.Name, c.City, o.Phone_Model, o.Order_Price
FROM Customers AS c     -- This table is called LEFT Table which is after FROM
LEFT JOIN Orders AS o ON c.ID = o.Customer_ID;

-- INNER JOIN: only customers WITH orders
SELECT c.Name FROM Customers c INNER JOIN Orders o ON c.ID = o.Customer_ID;

-- LEFT JOIN: ALL customers, with or without orders
SELECT c.Name FROM Customers c LEFT JOIN Orders o ON c.ID = o.Customer_ID;

-- Customers who have NEVER placed an order
SELECT
	c.Name AS Customer_Name,
    c.City,
    o.Phone_Model,
    o.Order_Price
FROM Customers AS c
LEFT JOIN Orders AS o ON c.ID = o.Customer_ID
WHERE o.ID IS NULL;  -- IS NULL filters only NULL rows — meaning only customers with zero matching orders

-- RIGHT JOIN is the mirror image of LEFT JOIN — it keeps every row from the right table, even if there's no match on the left.
-- ALL orders, even if somehow the customer is missing
SELECT c.Name, c.City, o.Phone_Model, o.Order_Price
FROM Customers AS c
RIGHT JOIN Orders AS o ON c.ID = o.Customer_ID;
-- You can rewrite RIGHT JOIN by swapping the table order in LEFT JOIN
-- These two queries return the exact same result
SELECT c.Name, o.Phone_Model FROM Customers c RIGHT JOIN Orders o ON c.ID = o.Customer_ID;
SELECT c.Name, o.Phone_Model FROM Orders o LEFT JOIN Customers c ON o.Customer_ID = c.ID;
