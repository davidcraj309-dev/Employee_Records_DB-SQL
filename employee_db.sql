CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (id, name, age, department, salary)
VALUES
(2, 'Arun', 26, 'IT', 35000.00),
(3, 'Priya', 24, 'HR', 30000.00),
(4, 'Kumar', 29, 'Finance', 45000.00),
(5, 'Sneha', 27, 'IT', 42000.00),
(6, 'Rahul', 30, 'Marketing', 38000.00),
(7, 'Divya', 23, 'HR', 28000.00),
(8, 'Vijay', 28, 'Finance', 50000.00),
(9, 'Anitha', 25, 'IT', 39000.00),
(10, 'Suresh', 32, 'Marketing', 46000.00),
(11, 'Meena', 26, 'Sales', 33000.00);

SELECT * FROM employees
WHERE salary>40000;

SELECT * FROM employees
WHERE department = "IT";

SELECT * FROM employees
ORDER BY salary ASC;

SELECT MAX(salary) AS highest_salary
FROM employees;

SELECT MIN(salary) AS average_salary
FROM employees;

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*)>2;

SELECT department, SUM(salary) AS employee_count
FROM employees
GROUP BY department
HAVING SUM(salary)>50000;


SELECT department, SUM(salary) AS Total_salary
FROM employees
GROUP BY department;


SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS employee_count
FROM employees
WHERE salary>=40000
GROUP BY department;

SELECT department, COUNT(*) AS employee_counts
FROM employees
GROUP BY department
HAVING COUNT(*) >2;

SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 80000;


SELECT * FROM employees;
