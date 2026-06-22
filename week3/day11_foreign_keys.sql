-- Week 3, Day 11
-- Topic: Foreign Keys and Table Relationships

CREATE DATABASE phone_shop_orders;
USE phone_shop_orders;

-- The "one" side - one row per customer
CREATE TABLE Customers(
ID INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(50),
Phone VARCHAR(20),
City VARCHAR(50)
);

INSERT INTO Customers (Name, Phone, City) VALUES ('Tanvir Hasan', '01711000111', 'Dhaka');
INSERT INTO Customers (Name, Phone, City) VALUES ('Farzana Akter', '01822000222', 'Chittagong');
INSERT INTO Customers (Name, Phone, City) VALUES ('Rakib Hossain', '01933000333', 'Sylhet');

SELECT*FROM Customers;

-- The "many" side - many orders can belong to one customer
CREATE TABLE Orders(
ID INT PRIMARY KEY AUTO_INCREMENT,
Customer_ID INT,
Phone_Model VARCHAR(50),
Order_Price INT,
FOREIGN KEY (Customer_ID) REFERENCES Customers(ID)
);

-- Orders linked to real customers
INSERT INTO Orders (Customer_ID, Phone_Model, Order_Price) VALUES (1, 'Galaxy S23', 95000);
INSERT INTO Orders (Customer_ID, Phone_Model, Order_Price) VALUES (1, 'Redmi 13C', 14000);
INSERT INTO Orders (Customer_ID, Phone_Model, Order_Price) VALUES (2, 'iPhone 14', 110000);
INSERT INTO Orders (Customer_ID, Phone_Model, Order_Price) VALUES (3, 'C55', 16000);

SELECT * FROM Orders;

-- This should FAIL - customer 1 has orders linked to them
DELETE FROM Customers WHERE ID = 1;
