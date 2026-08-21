-- Employee Salary & Department Analysis
-- Window Function Queries
-- Q33. Rank employees by salary from highest to lowest
SELECT
    name,
    salary,
    RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employee;

-- Q34. Assign a unique row number based on salary
SELECT
    name,
    salary,
    ROW_NUMBER() OVER (ORDER BY salary DESC) AS row_num
FROM employee;

-- Q35. Find the top 3 highest-paid employees in each department
WITH ranked_employees AS (
    SELECT
        dept_id,
        name,
        salary,
        ROW_NUMBER() OVER (
            PARTITION BY dept_id
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employee
)
SELECT
    dept_id,
    name,
    salary
FROM ranked_employees
WHERE salary_rank <= 3;
