-- Employee Salary & Department Analysis
-- Aggregate Functions
-- Q7. Count total employees
SELECT COUNT(*) AS employee_count
FROM employee;

-- Q8. Find total salary
SELECT SUM(salary) AS total_salary
FROM employee;

-- Q9. Find average salary
SELECT AVG(salary) AS average_salary
FROM employee;

-- Q10. Find highest salary
SELECT MAX(salary) AS highest_salary
FROM employee;

-- Q11. Find lowest salary
SELECT MIN(salary) AS lowest_salary
FROM employee;
