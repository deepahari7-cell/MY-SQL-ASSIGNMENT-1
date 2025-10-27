📘 MySQL Assignment 1 – DDL Commands & Constraints
🧩 Overview

This project demonstrates the use of MySQL Data Definition Language (DDL) commands and constraints through practical SQL examples.
The assignment involves creating a database, defining tables, applying constraints, and performing key DDL operations such as ALTER, RENAME, TRUNCATE, and DROP.

Database Setup
1️⃣ Create and Use Database

CREATE DATABASE IF NOT EXISTS Employee_db;
USE Employee_db;
SHOW DATABASES;

🧱 Table Creation
2️⃣ Create Tables
a. Departments Table

CREATE TABLE IF NOT EXISTS Departments (
department_id INT,
department_name VARCHAR(100)
);
SELECT * FROM Departments;

b. Location Table

CREATE TABLE IF NOT EXISTS Location (
location_id INT,
location VARCHAR(100)
);
SELECT * FROM Location;

c. Employees Table

CREATE TABLE IF NOT EXISTS Employees (
employee_id INT,
employee_name VARCHAR(100),
gender ENUM('M', 'F'),
age INT,
hire_date DATE,
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2)
);
SHOW TABLES;
SELECT * FROM Employees;

⚙️ Table Alteration
3️⃣ Modify Table Structure

ALTER TABLE Employees ADD COLUMN email VARCHAR(100);
ALTER TABLE Employees MODIFY designation VARCHAR(255);
ALTER TABLE Employees DROP COLUMN age;
ALTER TABLE Employees RENAME COLUMN hire_date TO date_of_joining;

4️⃣ Rename Tables

RENAME TABLE Departments TO Departments_info;
RENAME TABLE Location TO Locations;

5️⃣ Truncate and Drop

TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE Employee_db;

🧩 Constraints Implementation
6️⃣ Recreate Database and Tables with Constraints

CREATE DATABASE IF NOT EXISTS Employee_db;
USE Employee_db;
SHOW DATABASES;

a. Departments Table (With Constraints)

CREATE TABLE IF NOT EXISTS Departments (
department_id INT AUTO_INCREMENT PRIMARY KEY,
department_name VARCHAR(100) NOT NULL UNIQUE
);

b. Location Table (With Constraints)

CREATE TABLE IF NOT EXISTS Location (
location_id INT AUTO_INCREMENT PRIMARY KEY,
location VARCHAR(30) NOT NULL
);

c. Employees Table (With Constraints)

CREATE TABLE IF NOT EXISTS Employees (
employee_id INT AUTO_INCREMENT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
gender ENUM('M', 'F'),
age INT CHECK (age >= 18),
hire_date DATE DEFAULT (CURRENT_DATE()),
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2),
CONSTRAINT fk_department FOREIGN KEY (department_id)
REFERENCES Departments(department_id)
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT fk_location FOREIGN KEY (location_id)
REFERENCES Location(location_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);

✅ Summary of DDL Commands Used

CREATE DATABASE ---- Creates a new database
USE ----- Selects a database to work with
CREATE TABLE |----Defines a new table
ALTER TABLE ---- Adds, modifies, or deletes columns
RENAME TABLE ----Renames existing tables
TRUNCATE TABLE ----Removes all records but keeps the table structure
DROP TABLE / DATABASE ----Permanently deletes tables or databases
CONSTRAINT ----Defines rules for data integrity (Primary Key, Foreign Key, Unique, Not Null, Check, Default)

Key Learnings

Understanding the structure and use of DDL commands in MySQL.

Applying constraints to enforce data integrity.

Using referential actions (ON DELETE CASCADE, ON UPDATE CASCADE) for relational data consistency.

Modifying database schemas dynamically with ALTER, RENAME, and DROP.

👨‍💻 Author

Name: DEEPA M
Course: Data Analysist
Assignment: DDL Commands & Constraints
Date: 24-10-2025

