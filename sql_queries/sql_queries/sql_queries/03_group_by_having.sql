-- Employee Salary & Department Analysis
-- GROUP BY & HAVING Queries

-- Q12. Count employees in each department
SELECT dept_id, COUNT(*) AS employee_count
FROM employee
GROUP BY dept_id;

-- Q13. Find average salary in each department
SELECT dept_id, AVG(salary) AS average_salary
FROM employee
GROUP BY dept_id;

-- Q14. Find highest salary in each department
SELECT dept_id, MAX(salary) AS highest_salary
FROM employee
GROUP BY dept_id;

-- Q15. Find departments having more than 2 employees
SELECT dept_id, COUNT(*) AS employee_count
FROM employee
GROUP BY dept_id
HAVING COUNT(*) > 2;

-- Q16. Find departments where average salary is greater than 50,000
SELECT dept_id, AVG(salary) AS average_salary
FROM employee
GROUP BY dept_id
HAVING AVG(salary) > 50000;

-- Q17. Count employees in each city
SELECT city, COUNT(*) AS employee_count
FROM employee
GROUP BY city;
