-- Employee Salary & Department Analysis
-- CTE Queries

-- Q31. Find the average salary using a CTE
WITH avg_salary AS (
    SELECT AVG(salary) AS average_salary
    FROM employee
)
SELECT *
FROM avg_salary;

-- Q32. Find employees earning more than the average salary using a CTE
WITH avg_salary AS (
    SELECT AVG(salary) AS average_salary
    FROM employee
)
SELECT employee.name, employee.salary
FROM employee
CROSS JOIN avg_salary
WHERE employee.salary > avg_salary.average_salary;
