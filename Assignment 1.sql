/*MySQL Assignment 1 – DDL Commands & Constraints*/

CREATE DATABASE IF NOT EXISTS Employee_db;
Use Employee_db;
Show databases;

/*Table creation*/

CREATE TABLE IF NOT EXISTS Departments
(
department_id INT,
department_name VARCHAR(100));

select * from Departments;

CREATE TABLE IF NOT EXISTS LOCATION
(
location_id INT,
Location VARCHAR(100));

select * from location;

Use employee_db;

CREATE TABLE IF NOT EXISTS Employees(
employee_id INT,
employee_name VARCHAR(100),
gender ENUM ('M','F'),
age INT,
hire_date DATE,
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2)
);

show tables;
select * from employees;

/*Table alteration*/

ALTER TABLE employees ADD COLUMN email VARCHAR(100);
ALTER TABLE employees MODIFY designation VARCHAR(255);
ALTER TABLE employees DROP COLUMN age;
ALTER TABLE employees RENAME column hire_date to date_of_joining;
           /*Rename*/
RENAME table departments to Departments_info;
RENAME table Location to Locations;
        /*Truncate*/
truncate TABLE employees;
         /*Drop table,database*/
DROP table employees;
Drop database employee_db;

            /*constraints*/

CREATE database IF NOT exists employee_db;
Use employee_db;
SHOW databases;
CREATE TABLE IF NOT exists Departments
(
department_id int auto_increment primary key,
department_Name VARCHAR(100) NOT null unique
);

CREATE TABLE IF NOT exists Location
(
Location_id int auto_increment primary key,
Location varchar(30) not null
);

CREATE TABLE IF NOT exists employees
(
employee_id int auto_increment unique primary key,
employee_Name VARCHAR(50) NOT null,
Gender ENUM("M","F"),
Age INT CHECK(Age>=18),
hire_date DATE default (current_date()),
designation varchar(100),
department_id INT,
location_id INT,
Salary decimal(10,2),
constraint fk_departmnet foreign key(department_id) references departments(department_id),
constraint fk_location foreign key(location_id) references location(location_id)
ON DELETE cascade
ON update cascade
);





