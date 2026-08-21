-- Employee Salary & Department Analysis
-- Subquery Queries
-- Q26. Employees earning more than the company average salary

SELECT name, salary
FROM employee
WHERE salary > (
    SELECT AVG(salary)
    FROM employee
);

-- Q27. Employees earning more than the minimum salary
SELECT name, salary
FROM employee
WHERE salary > (
    SELECT MIN(salary)
    FROM employee
);

-- Q28. Employees earning less than the maximum salary
SELECT name, salary
FROM employee
WHERE salary < (
    SELECT MAX(salary)
    FROM employee
);

-- Q29. Employees whose salary equals the company average salary
SELECT name, salary
FROM employee
WHERE salary = (
    SELECT AVG(salary)
    FROM employee
);

-- Q30. Employee(s) with the highest salary
SELECT name, salary
FROM employee
WHERE salary = (
    SELECT MAX(salary)
    FROM employee
);
