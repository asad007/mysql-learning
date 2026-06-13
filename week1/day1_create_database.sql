CREATE DATABASE my_first_database1;  /*tells My SQLto make a new empty database named my_first_database1*/
SHOW DATABASES;  /*show mw the database*/
USE my_first_database1;  /* from right now use my_first_database1 untill I clos it*/
CREATE TABLE students (      /* create a table named students with three column: ID, Name, Age */
	ID int,     /* ID will be int or a whole number */
    Name varchar(50),   /*text upto 50 characters long*/
    Age int      /* A whole number */
);      /* The table is empty right now — like a brand new spreadsheet with headers but no rows yet */
SHOW TABLES;
