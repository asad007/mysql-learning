-- Week 3, Day 12
-- Topic: INNER JOIN

USE phone_shop_orders;

-- Show each order WITH the customer's name
SELECT * FROM Orders    -- -- FROM orders — start with the orders table
INNER JOIN Customers ON ORDERS.Customer_ID = Customers.ID;  -- INNER JOIN Customers — bring in the Customers table too

                             /*ON Orders.Customer_ID = Customers.ID — this is the matching rule. 
                                            It tells MySQL: "only combine rows where these two columns are equal."*/

-- INNER JOIN only returns rows that have a match in both tables.

-- Cleaner output - only the columns we need.  Using short aliases o and c
SELECT
	o.ID AS Order_Id,
    c.Name AS Customer_Name,
    c.City,
    o.Phone_Model,
    o.order_Price
From Orders AS o
INNER JOIN Customers AS c ON o.Customer_ID = c.ID;
-- Instead of *, we picked exactly the columns we want from each table

-- Orders from customers in Dhaka only
SELECT
	o.ID AS Order_ID,
    c.Name AS Customer_Name,
    c.City,
    o.Phone_Model,
    o.Order_Price
    FROM Orders AS o
    INNER JOIN Customers AS c ON o.Customer_ID = c.ID
    WHERE c.City = 'Dhaka';
    
-- Orders above 50,000 taka, with customer details
SELECT
	o.ID AS Order_ID,
    c.Name AS Customer_Name,
    c.City,
    o.Phone_Model,
    o.Order_Price
FROM Orders AS o
INNER JOIN Customers AS c ON o.Customer_ID = c.ID
WHERE o.Order_Price > 50000;

-- SELECT → FROM → JOIN → ON → WHERE → GROUP BY → HAVING → ORDER BY → LIMIT  (Clause Order)

-- Total spent per customer
SELECT
	c.Name AS Customer_Name,
    c.City,
    COUNT(o.ID) AS Total_Order,
    SUM(o.Order_Price) AS Total_spent
FROM Orders as o
INNER JOIN Customers AS c ON o.Customer_ID = c.ID
GROUP BY c.Name, c.City;

-- Customers who spent more than 50,000 total
SELECT 
    c.Name AS Customer_Name,
    SUM(o.Order_Price) AS Total_Spent
FROM Orders AS o
INNER JOIN Customers AS c ON o.Customer_ID = c.ID
GROUP BY c.Name
HAVING SUM(o.Order_Price) > 50000
ORDER BY Total_Spent DESC;
    

