CREATE DATABASE Employee;
USE Employee;

CREATE TABLE Departments(
Department_id INT,
Department_name VARCHAR(100));

SELECT * FROM Departments;

CREATE TABLE Employees(
Employee_id INT,
Employee_name VARCHAR(50),
Gender ENUM('M','F'),
Age INT,
Hire_date DATE,
Designation VARCHAR(100),
Department_id INT,
Location_id INT,
Salary DECIMAL(10,2));

SELECT * FROM Employees;

CREATE TABLE Location(
Location_id INT,
Location VARCHAR(30));

SELECT * FROM Location;

ALTER TABLE Employees ADD COLUMN Email VARCHAR(50);

ALTER TABLE Employees MODIFY COLUMN Designation VARCHAR(200);

ALTER TABLE Employees DROP COLUMN Age;

ALTER TABLE Employees RENAME COLUMN Hire_date TO Date_of_joining;

RENAME TABLE Departments TO Departments_Info;
SELECT * FROM Departments_Info;

RENAME TABLE Location TO Locations;
SELECT * FROM Locations;

TRUNCATE TABLE Employees;

DROP TABLE Employees;

DROP DATABASE Employee;

 
CREATE DATABASE Employee;
USE Employee;

CREATE TABLE Departments(
department_id INT PRIMARY KEY,
department_name VARCHAR(100) NOT NULL UNIQUE);

SELECT * FROM Departments;

CREATE TABLE Location(
location_id INT PRIMARY KEY AUTO_INCREMENT,
location_name VARCHAR(30) NOT NULL UNIQUE); 

SELECT * FROM Location;

CREATE TABLE Employees(
employee_id INT PRIMARY KEY,
employee_name VARCHAR(50) NOT NULL,
gender ENUM('M','F'),
age INT CHECK(age>=18),
hire_date DATE DEFAULT(CURRENT_DATE),
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2),

FOREIGN KEY(department_id) REFERENCES Departments(department_id),
FOREIGN KEY(location_id) REFERENCES Location(location_id));

SELECT * FROM Employees;






