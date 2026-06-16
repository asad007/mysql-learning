-- Week 2, Day 7
-- Topic: LIKE and wildcards

USE PHONE_SHOP;

-- Find phones that contain 'galaxy' in the model name
SELECT * FROM PHONES
WHERE MODEL LIKE '%GALAXY%';

-- Brands that start with S
SELECT * FROM PHONES
WHERE BRAND LIKE 'S%';    -- start with S, after that anything can be there

-- Brands that end with i
SELECT * FROM PHONES
WHERE BRAND LIKE '%I';  -- Ends with I, before that anything can be there

-- Models that contain 13 anywhere
SELECT * FROM PHONES
WHERE MODEL LIKE '%13%';  -- After and Before 13 anything can be. But 13 must be there

-- Brands with exactly 4 characters
SELECT * FROM PHONES
WHERE BRAND LIKE '_____';

-- Models that start with any character then 'ppo'
SELECT * FROM PHONES
WHERE MODEL LIKE '_PPO';

-- Models that start with any 5 characters then contain 'note'
SELECT * FROM PHONES
WHERE MODEL LIKE '_____%NOTE%';

-- Second character is 'i'
SELECT * FROM PHONES
WHERE BRAND LIKE '_A%';

-- Phones whose brand does NOT start with 'S'
SELECT * FROM PHONES
WHERE BRAND NOT LIKE 'S%';

-- Phones whose model does NOT contain 'Redmi'
SELECT *FROM PHONES
WHERE MODEL NOT LIKE '%REDMI%';

-- Xiaomi phones whose model does NOT contain 'Redmi'
SELECT * FROM PHONES
WHERE BRAND = 'XIAOMI' AND MODEL LIKE '%REDMI%';

SELECT * FROM PHONES
WHERE BRAND = 'XIAOMI';
