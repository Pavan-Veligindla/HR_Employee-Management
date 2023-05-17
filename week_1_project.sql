CREATE DATABASE IF NOT EXISTS week_1_project; 
USE week_1_project;

-- 1) Create a table city with columns named person_id, city_name, Locality, andCountry. Also, mention the character or digit length for all the declared fields 

CREATE TABLE city (
	person_id int,
    city_name varchar(10),
    Locality varchar(30),
    country varchar(15)
    );
    
-- 2) Display the table created
	show tables;
DESCRIBE CITY;

-- 3) Start populating the table
INSERT INTO city
VALUES
(1,"Raipur","Shankar Nagar","India"),
(2,"Raipur","Sales Tax Colony",'India'),
(3,"Bilaspur",'Nehru Nagar','India'),
(4,'Bilaspur','Civil Lines','India')
;
select * from city;

-- 4) Add a column for contact with 10 digits length
ALTER TABLE city ADD COLUMN contact varchar(10);
describe city;

-- 5) change the column name for "city_name to "District"
ALTER TABLE city CHANGE city_name District varchar(10);
DESCRIBE city;

-- 6) Drop the table city and check whether it is dropped or not
DROP TABLE city;
show tables;

-- 7) Update the location for person_id to "Warehouse Road"
UPDATE city
SET
locality="Warehouse Road" WHERE person_id = 4;
select * from city;


USE hr;
-- 8) 
-- a) Write a query to view the structure of the table 
describe employees;

-- b) Display the details of the employees working in the company
select * from employees;

-- c) Dispaly employee_id, first_name, last_name, and hiring date of employees in the department no.38
select employee_id, first_name, last_name, hire_date from employees WHERE department_id = 38;

-- 9) Retrieve the phone_number, job_id, and employee_salary whose name is "Gopi Kumar"
select phone_number, job_id, salary from employees WHERE first_name = "Gopi" AND last_name = "Kumar";

