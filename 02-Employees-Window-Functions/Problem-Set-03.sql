

-- =====================================================================================================
-- LEVEL 3 – Running & Cumulative Calculations (13–18)

-- Calculate running total of salaries ordered by hire date.
SELECT
    emp_id,
    emp_name,
    hire_date,
    salary,
    SUM(salary) OVER (
        ORDER BY hire_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_total_salary
FROM employees;



-- Calculate running total of salaries per department.

-- Show moving average of last 3 salaries.

-- Calculate cumulative salary percentage.

-- Show first hired employee per department.

-- Show last hired employee per department.