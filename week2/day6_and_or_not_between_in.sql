-- Week 2, Day 6
-- Topic: AND, OR, NOT, BETWEEN, IN

USE phone_shop;

-- Samsung phones priced above 35000
SELECT * FROM PHONES
WHERE BRAND = 'SAMSUNG' AND PRICE > 35000;

-- Apple OR Xiaomi phones
SELECT * FROM PHONES
WHERE BRAND = 'APPLE' OR BRAND = 'XIAOMI';

/* For AND  Both conditions must be true
   For OR At least one condition must be true */
   
   -- (NOT) simply excludes results that match a condition. It's the opposite of (WHERE).
   
   -- All phones except Samsung
   SELECT * FROM PHONES
   WHERE NOT BRAND = 'SAMSUNG';
   
   -- All phones except those priced above 50,000
   SELECT * FROM PHONES
   WHERE NOT PRICE>45000;
   
   /*NOT flips the condition:
WHERE brand = 'Samsung' means only Samsung
WHERE NOT brand = 'Samsung' means everything except Samsung*/

SELECT * FROM PHONES
WHERE BRAND != 'XIAOMI';   -- (!=) sign also means (NOT)

/*BETWEEN filters results within a range of values. 
Instead of writing price >= 20000 AND price <= 50000, you can write it much cleaner.*/

-- Phones priced between 20,000 and 50,000 taka
SELECT * FROM PHONES
WHERE PRICE BETWEEN 25000 AND 60000;

-- Phones outside that price range
SELECT * FROM PHONES
WHERE PRICE NOT BETWEEN 25000 AND 60000;

-- Phones outside that price range
SELECT * FROM PHONES
WHERE BRAND BETWEEN 'A' AND 'R';

-- IN lets you filter by a list of specific values — instead of writing multiple OR conditions.

-- Samsung, Apple or Realme phones
SELECT * FROM PHONES
WHERE BRAND IN ('SAMSUNG', 'APPLE');

-- Everything except Samsung, Apple and Realme
SELECT * FROM PHONES
WHERE BRAND NOT IN ('SAMSUNG', 'APPLE');

-- IN is just a cleaner way of writing multiple OR conditions

--  Phones with exactly 3, 6 or 8 units in stock
SELECT * FROM PHONES
WHERE STOCK IN (7, 3, 8);

SELECT * FROM PHONES
WHERE STOCK NOT IN (7, 3, 5);
