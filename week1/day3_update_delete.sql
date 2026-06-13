-- Week 1, Day 3
-- Topic: UPDATE, DELETE, PRIMARY KEY, AUTO_INCREMENT

USE my_first_database1;

-- Update Sabbir's age
UPDATE students
SET Age = 14
WHERE Name = 'Sabbir';
SELECT * FROM students;

/*UPDATE students — which table to change
SET age = 14 — what to change
WHERE name = 'Sabbir' — which row to change

⚠️ The WHERE clause is critical here. Without it, every student's age would be set to 14! */

-- Remove Al Amin from the table
DELETE FROM students
WHERE Name = 'Al Amin';

SELECT * FROM students;

-- Drop the old table and rebuild it properly
DROP TABLE students;

-- New students table with PRIMARY KEY
CREATE TABLE students(
	ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

INSERT INTO students (ID, Name, Age) VALUES(1, 'Siam', 14);
INSERT INTO students (ID, Name, Age) VALUES(2, 'Sabbir', 14);
INSERT INTO students (ID, Name, Age) VALUES(3, 'Al Amin', 15);

DELETE FROM students
WHERE ID = 3;

INSERT INTO students (ID, Name, Age) VALUES (3, 'Al Amin', 15);

SELECT * FROM students;
DELETE FROM students
WHERE ID = 3;
SELECT * FROM students;

DROP TABLE students;

CREATE TABLE students(
	ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);

INSERT INTO students (ID, Name, Age) VALUES(1, 'Siam', 14);
INSERT INTO students (ID, Name, Age) VALUES(2, 'Sabbir', 14);
INSERT INTO students (ID, Name, Age) VALUES(3, 'Al Amin', 15);

SELECT * FROM students;

-- Rebuild table with AUTO_INCREMENT
DROP TABLE students;

CREATE TABLE students(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Age INT
);
INSERT INTO students (ID, Name, Age) VALUES('Siam', 14);
INSERT INTO students (ID, Name, Age) VALUES('Sabbir', 14);
INSERT INTO students (ID, Name, Age) VALUES('Al Amin', 15);
SELECT * FROM students;

/*AUTO_INCREMENT tells MySQL: "Every time a new row is inserted, automatically give this column the next available number."*/
