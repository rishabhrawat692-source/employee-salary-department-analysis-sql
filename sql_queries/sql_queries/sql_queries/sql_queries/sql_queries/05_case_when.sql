-- Employee Salary & Department Analysis
-- CASE WHEN Queries

-- Q23. Categorize employees based on salary
SELECT name,
       CASE
           WHEN salary >= 60000 THEN 'High'
           WHEN salary >= 40000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_category
FROM employee;

-- Q24. Label employees as High or Normal
SELECT name,
       CASE
           WHEN salary >= 70000 THEN 'High'
           ELSE 'Normal'
       END AS salary_level
FROM employee;

-- Q25. Count employees in each salary category
SELECT
    CASE
        WHEN salary >= 60000 THEN 'High'
        WHEN salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category,
    COUNT(*) AS employee_count
FROM employee
GROUP BY
    CASE
        WHEN salary >= 60000 THEN 'High'
        WHEN salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END;
