CREATE DATABASE PHONE_SALES;
SHOW DATABASES;
USE PHONE_SALES;

CREATE TABLE Sales(
ID INT PRIMARY KEY AUTO_INCREMENT,
Phone_Model VARCHAR(50),    -- Which phone was sold
Brand VARCHAR(50),          -- Brand of the phone
Quantity INT,               -- How many units sold
Sale_Price INT,             -- Price per unit sold
Sale_Date DATE              -- When it was sold
);
SHOW TABLES;

INSERT INTO Sales (Phone_Model, Brand, Quantity, Sale_Price, Sale_Date) VALUES ('Galaxy A15', 'Samsung', 3, 18000, '2026-05-01');
INSERT INTO Sales (Phone_Model, Brand, Quantity, Sale_Price, Sale_Date) VALUES ('Galaxy A35', 'Samsung', 2, 35000, '2026-05-03');
INSERT INTO Sales (Phone_Model, Brand, Quantity, Sale_Price, Sale_Date) VALUES ('Galaxy S23', 'Samsung', 1, 95000, '2026-05-05');
INSERT INTO Sales (Phone_Model, Brand, Quantity, Sale_Price, Sale_Date) VALUES ('Redmi 13C', 'Xiaomi', 5, 14000, '2026-05-02');
INSERT INTO Sales (Phone_Model, Brand, Quantity, Sale_Price, Sale_Date) VALUES ('Redmi Note 13', 'Xiaomi', 4, 28000, '2026-05-06');
INSERT INTO Sales (Phone_Model, Brand, Quantity, Sale_Price, Sale_Date) VALUES ('C55', 'Realme', 6, 16000, '2026-05-04');
INSERT INTO Sales (Phone_Model, Brand, Quantity, Sale_Price, Sale_Date) VALUES ('Narzo 60', 'Realme', 2, 24000, '2026-05-07');
INSERT INTO Sales (Phone_Model, Brand, Quantity, Sale_Price, Sale_Date) VALUES ('Iphone 13', 'Apple', 1, 85000, '2026-05-08');
INSERT INTO Sales (Phone_Model, Brand, Quantity, Sale_Price, Sale_Date) VALUES ('Iphone 14', 'Apple', 2, 110000, '2026-05-10');
INSERT INTO Sales (Phone_Model, Brand, Quantity, Sale_Price, Sale_Date) VALUES ('Galaxy A15', 'Samsung', 4, 18000, '2026-05-12');
INSERT INTO Sales (Phone_Model, Brand, Quantity, Sale_Price, Sale_Date) VALUES ('Redmi 13C', 'Xiaomi', 3, 14000, '2026-05-13');
INSERT INTO Sales (Phone_Model, Brand, Quantity, Sale_Price, Sale_Date) VALUES ('C55', 'Realme', 3, 16000, '2026-05-14');

SELECT * FROM Sales;

-- Show all sales where quantity sold is more than 2
SELECT * FROM Sales
WHERE Quantity>2;       

-- Show all sales for brands Samsung OR Apple using IN
SELECT * FROM Sales
WHERE Brand IN ('Samsung', 'Apple');    

-- Find all sales where the model contains "Galaxy" using LIKE
SELECT * FROM Sales
WHERE Phone_Model LIKE '%Galaxy%';    

-- Calculate total revenue (quantity × sale_price) for the whole shop
SELECT SUM(Quantity*Sale_Price) AS Total_Revenue 
FROM Sales;

-- Show total quantity sold per brand using GROUP BY
SELECT Brand, SUM(Quantity) AS Total_Quantity
FROM Sales
GROUP BY Brand;

-- Show average sale price per brand
SELECT Brand, AVG(Sale_Price) AS Avg_Sale_Price
FROM Sales
GROUP BY Brand;

-- Show only brands that sold more than 5 total units using HAVING
SELECT Brand, SUM(Quantity) AS Top_sales
FROM Sales
GROUP BY Brand
HAVING SUM(Quantity)>5;

-- Sort brands by total revenue, highest to lowest
SELECT Brand, SUM(Quantity*Sale_Price) AS Total_Rev_Brand
FROM Sales
GROUP BY Brand
ORDER BY SUM(Quantity*Sale_Price) DESC;
