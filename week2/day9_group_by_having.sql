-- Week 2, Day 9
-- Topic: GROUP BY and HAVING

USE PHONE_SHOP;

-- How many phones does each brand have?
SELECT BRAND, COUNT(*) AS TOTAL_PHONES FROM PHONES
GROUP BY BRAND;
/* COUNT(*) counted all phones in the table. But what if you want to know how many phones each brand has?
That's exactly what GROUP BY does — it splits your data into groups and runs aggregate functions on each group separately. */

-- Total stock per brand
SELECT BRAND, SUM(STOCK) AS TOTAL_STOCK FROM PHONES
GROUP BY BRAND;

-- Average price per brand
SELECT BRAND, AVG(PRICE) AS AVG_PRICE FROM PHONES
GROUP BY BRAND;

-- Most expensive phone per brand
SELECT BRAND, MAX(PRICE) AS EXPENSIVE_PHONE FROM PHONES
GROUP BY BRAND;

-- Cheapest phone per brand
SELECT BRAND, MIN(PRICE) AS CHEAPEST_PHONE FROM PHONES
GROUP BY BRAND;

SELECT BRAND,
	COUNT(*) AS TOTAL_PHONES,
    SUM(STOCK) AS TOTAL_STOCK,
    MAX(PRICE) AS EXPENSIVE_PHONE,
    MIN(PRICE) AS CHEAPEST_PHONE
    FROM PHONES
    GROUP BY BRAND;
    
-- HAVING
-- WHERE filters rows. But WHERE can't filter groups — that's what HAVING is for.

-- Brands that have more than 2 phones
SELECT BRAND, COUNT(*) AS TOTAL_PHONES FROM PHONES
GROUP BY BRAND
HAVING COUNT(*)>2;

-- Brands whose average price is above 30,000
SELECT BRAND, AVG(PRICE) AS AVG_PRICE FROM PHONES
GROUP BY BRAND
HAVING AVG(PRICE)>30000;

-- WHERE filters rows first (before grouping)
SELECT BRAND, COUNT(*) AS TOTAL_PHONE FROM PHONES
WHERE PRICE>30000
GROUP BY BRAND;

-- HAVING filters groups after grouping
SELECT BRAND, COUNT(*) AS TOTAL_PHONES FROM PHONES
GROUP BY BRAND
HAVING COUNT(*)>2;

-- Average price per brand, only for phones under 100,000
-- sorted by average price highest to lowest
SELECT BRAND, AVG(PRICE) AS AVG_PRICE FROM PHONES
WHERE PRICE <100000
GROUP BY BRAND
ORDER BY AVG_PRICE DESC;

-- Brands with more than 1 phone,
-- showing total stock, sorted by total stock
SELECT BRAND, COUNT(*) AS TOTAL_PHONE, SUM(STOCK) AS TOTAL_STOCK
FROM PHONES
GROUP BY BRAND
HAVING COUNT(*)>1
ORDER BY TOTAL_STOCK DESC;

-- Full shop summary sorted by most expensive brand
SELECT BRAND, 
	COUNT(*) AS TOTAL_PHONE,
    SUM(STOCK) AS TOTAL_STOCK,
    AVG(PRICE) AS AVG_PRICE,
    MAX(PRICE) AS MOST_EXPENSIVE
    FROM PHONES
GROUP BY BRAND
HAVING COUNT(*)>1
ORDER BY MOST_EXPENSIVE DESC;
