-- Week 1, Day 4
-- Topic: ORDER BY, LIMIT, DISTINCT
USE my_first_database1;
INSERT INTO students(Name, Age) VALUES('Nadia', 13);
INSERT INTO students (Name, Age) VALUES('Mitu', 32);
INSERT INTO students(Name, Age) VALUES('Ripa', 28);

-- Sort by age from youngest to oldest
SELECT * FROM students
ORDER BY Age ASC;

-- Sort by age from oldest to youngest
SELECT * FROM students
ORDER BY Age DESC;

-- If you don't write ASC or DESC, MySQL uses ASC by default.

-- Clear all rows
DELETE FROM students;

-- Re-insert cleanly once
INSERT INTO students (Name, Age) VALUES('Siam', 14);
INSERT INTO students (Name, Age) VALUES('Sabbir', 12);
INSERT INTO students (Name, Age) VALUES('Al Amin', 15);
INSERT INTO students(Name, Age) VALUES('Nadia', 13);
INSERT INTO students (Name, Age) VALUES('Mitu', 32);
INSERT INTO students(Name, Age) VALUES('Ripa', 28);

SELECT * FROM students;

-- Sort by age from youngest to oldest
SELECT * FROM students
ORDER BY age ASC;

-- Sort by age from oldest to youngest
SELECT * FROM students
ORDER BY age DESC;

-- Show only 2 students
SELECT * FROM students
LIMIT 2;

-- The 2 youngest students
SELECT * FROM students
ORDER BY Age ASC
LIMIT 2;

-- The 2 oldest students
SELECT * FROM students
ORDER BY Age DESC
LIMIT 2;

-- Adding more students
INSERT INTO students (name, age) VALUES ('Rafi', 13);
INSERT INTO students (name, age) VALUES ('Jannat', 12);

SELECT * FROM students;

-- Shows duplicate ages
SELECT Age FROM students;

-- Shows each age only once
SELECT DISTINCT Age FROM students;

-- Top 3 oldest students
SELECT * FROM students
ORDER BY age DESC
LIMIT 3;

-- All unique ages in order
SELECT DISTINCT age FROM students
ORDER BY age ASC;

-- Youngest student who is 14 or older
SELECT * FROM Students
WHERE Age>=14
ORDER BY Age ASC
LIMIT 1;

/* Always Follow this Order
SELECT
FROM
WHERE
ORDER BY
LIMIT 
*/
-- WHERE    Filter which rows to include
-- ORDER BY    Sort those rows
--  LIMIT    Cut Off after N rows
-- DISTINCT   Remove duplicate values



