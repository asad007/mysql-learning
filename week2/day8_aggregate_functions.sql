-- Week 2, Day 8
-- Topic: COUNT, SUM, AVG, MIN, MAX
USE PHONE_SHOP;

-- How many phones do we have?
SELECT COUNT(*) FROM PHONES;

-- How many phones have a price listed?
SELECT COUNT(PRICE) FROM PHONES;

-- Rename the result column
SELECT COUNT(*) AS TOTAL_PHONES FROM PHONES;

-- Total value of all phones in stock
SELECT SUM(PRICE) AS TOTAL_VALUES FROM PHONES;

-- Total units across all phones
SELECT SUM(STOCK) AS TOTAL_STOCK FROM PHONES;

-- Average price of all phones
SELECT AVG(PRICE) AS AVG_PRICE FROM PHONES;

-- Cheapest phone in the shop
SELECT MIN(PRICE) AS CHEAPEST_PHONE FROM PHONES;

-- Show full details of the cheapest phone
SELECT * FROM PHONES
WHERE PRICE = (SELECT MIN(PRICE) FROM PHONES);

-- Most expensive phone in the shop
SELECT MAX(PRICE) AS MOST_EXPENSIVE FROM PHONES;

-- Show full details of the most expensive phone
SELECT * FROM PHONES
WHERE PRICE = (SELECT MAX(PRICE) FROM PHONES);  -- HERE INNER SELECT IS CALLED SUB QUERY

-- First and last brand alphabetically
SELECT MIN(BRAND) AS FIRST_BRAND, MAX(BRAND) AS LAST_BRAND FROM PHONES;

-- How many Samsung phones do we have?
SELECT COUNT(*) AS SAMSUNG_COUNT FROM PHONES
WHERE BRAND = 'SAMSUNG';

-- Total stock of Apple phones
SELECT SUM(STOCK) AS TOTAL_APPLE FROM PHONES
WHERE BRAND = 'APPLE';

-- Average price of phones under 50,000 taka
SELECT AVG(PRICE) AS BUDGET_AVG_PHONES FROM PHONES
WHERE PRICE < 50000;

-- Most expensive Samsung phone
SELECT MAX(PRICE) AS MOST_EXPENSIVE_SAMSUNG FROM PHONES
WHERE BRAND = 'SAMSUNG';


