-- Employee Salary & Department Analysis
-- JOIN Queries

-- Q18. Display employee name and department name
SELECT employee.name, departments.dept_name
FROM employee
JOIN departments
ON employee.dept_id = departments.dept_id;

-- Q19. Display employee name, salary and department name
SELECT employee.name, employee.salary, departments.dept_name
FROM employee
JOIN departments
ON employee.dept_id = departments.dept_id;

-- Q20. Display employees working in the Finance department
SELECT employee.name, employee.salary
FROM employee
JOIN departments
ON employee.dept_id = departments.dept_id
WHERE departments.dept_name = 'Finance';

-- Q21. Display employees working in the HR department
SELECT employee.name, employee.salary
FROM employee
JOIN departments
ON employee.dept_id = departments.dept_id
WHERE departments.dept_name = 'HR';

-- Q22. Display all employees with their department names
SELECT employee.name, departments.dept_name
FROM employee
LEFT JOIN departments
ON employee.dept_id = departments.dept_id;
