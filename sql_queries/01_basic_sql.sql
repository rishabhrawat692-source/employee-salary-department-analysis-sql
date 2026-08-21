-- Employee Salary & Department Analysis
-- Basic SQL Queries


-- Q1. Display all employees
SELECT *
FROM employee;

-- Q2. Display employee names and salaries
SELECT name, salary
FROM employee;

-- Q3. Find employees with salary greater than 50,000
SELECT name, salary
FROM employee
WHERE salary > 50000;

-- Q4. Find employees from Delhi
SELECT name, city
FROM employee
WHERE city = 'Delhi';

-- Q5. Display employees in descending order of salary
SELECT name, salary
FROM employee
ORDER BY salary DESC;

-- Q6. Display the first 5 employees
SELECT *
FROM employee
LIMIT 5;
