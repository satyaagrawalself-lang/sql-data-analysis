-- SQL DATA ANALYSIS PROJECT
-- Employee & Department Analytics

CREATE DATABASE company_analytics;

USE company_analytics;


-- Department Table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- Employee Table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary DECIMAL(10,2),
    manager_id INT,
    joining_date DATE,

    FOREIGN KEY (dept_id)
    REFERENCES Department(dept_id)
);


-- Insert Department Data
INSERT INTO Department (dept_id, dept_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Sales'),
(5, 'Marketing');


-- Insert Employee Data
INSERT INTO Employee
(emp_id, emp_name, dept_id, salary, manager_id, joining_date)
VALUES
(101, 'Amit Sharma', 1, 75000, NULL, '2021-01-15'),
(102, 'Priya Singh', 1, 60000, 101, '2022-03-10'),
(103, 'Rahul Verma', 2, 55000, NULL, '2020-07-20'),
(104, 'Neha Gupta', 2, 45000, 103, '2023-02-12'),
(105, 'Rohit Jain', 3, 80000, NULL, '2019-11-05'),
(106, 'Anjali Mehta', 3, 50000, 105, '2022-06-18'),
(107, 'Karan Patel', 4, 65000, NULL, '2021-09-25'),
(108, 'Sneha Kapoor', 4, 48000, 107, '2023-04-14'),
(109, 'Vikas Yadav', 5, 70000, NULL, '2020-12-01'),
(110, 'Pooja Nair', 5, 52000, 109, '2022-08-30');
