-- Week 3, Day 14
-- Topic: Aliases and UNION

USE phone_shop_orders;

-- Column alias + calculated alias
SELECT 
    Name AS Customer_Name,
    City AS Location,
    Phone
FROM Customers;

-- Alias for a calculated value
SELECT 
    Phone_Model,
    Order_Price,
    Order_Price *0.05 AS Commission
FROM Orders;

/*UNION is different from JOIN. While JOIN combines columns side by side from two tables, 
UNION stacks the results of two separate queries on top of each other, into one list.*/
-- We need to look across two different databases

SELECT MODEL FROM PHONE_SHOP.PHONES
UNION
SELECT Phone_Model FROM PHONE_SALES.Sales;

-- UNION ALL keeps every row, including duplicates
SELECT MODEL FROM PHONE_SHOP.PHONES
UNION ALL
SELECT Phone_Model FROM PHONE_SALES.Sales;

-- JOIN: combines side-by-side (wider result)
SELECT c.Name, o.Phone_Model
FROM Customers AS c
INNER JOIN Orders AS o ON c.ID = o.Customer_ID;

-- UNION: stacks on top of each other (taller result)
SELECT MODEL FROM PHONE_SHOP.PHONES
UNION
SELECT Phone_Model FROM PHONE_SALES.Sales;
