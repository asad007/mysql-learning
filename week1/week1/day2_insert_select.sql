-- MySQL Week 1, Day 2
-- Topic: INSERT and SELECT
USE my_first_database1;
DELETE FROM students;   -- Remove all rows from the table
INSERT INTO students (ID, Name, Age) VALUES (1, 'Siam', 14);
INSERT INTO students (ID, Name, Age) VALUES (2, 'Sabbir', 13);
INSERT INTO students (ID, Name, Age) VALUES (3, 'Al Amin', 15);

/*INSERT INTO tells MySQL which table to add data to. Then:

(id, name, age) — the columns you're filling
VALUES (1, 'Siam', 14) — the actual data, in the same order */

SELECT * FROM students;   -- Retrieve all students

/*SELECT is the command for reading data. It's the most used command in all of SQL.

* means "give me all columns"
FROM students means "from the students table"

So SELECT * FROM students literally means: "Show me everything from the students table.*/

-- Only show names
SELECT Name FROM students;

-- Filter Data with WHERE
SELECT * FROM students
WHERE Age>13;   -- Find students older than 13

SELECT * FROM students
WHERE Name='Sabbir';

/*WHERE filters the results. MySQL reads every row and only returns the ones where the condition is true.*/
