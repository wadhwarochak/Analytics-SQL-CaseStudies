
-- =====================================================================================================
-- LEVEL 2 – Ranking Functions (7–12)

-- Rank employees by salary overall.
select *, rank() over(order by salary desc) as salary_rank from employees;

-- Rank employees by salary within department.
select emp_id, emp_name, dept_id, salary,
rank() OVER(partition by dept_id ORDER BY salary desc) as salary_rank from employees;


-- Show employees whose salary rank is top 3 in their department.
select emp_id, emp_name, dept_id, salary from (
select emp_id, emp_name, dept_id, salary,
rank() OVER(partition by dept_id ORDER BY salary desc) as salary_rank from employees) A
where salary_rank <=3;


-- Find employees who have the same salary and share the same rank.
with cte as(
select emp_id, emp_name, dept_id, salary,
rank() OVER(ORDER BY salary desc) as salary_rank,
count(*) over (partition by salary) as cnt_same_salary
from employees)
select * from cte where cnt_same_salary>1;

-- Show salary difference between employee and previous employee (by salary).
SELECT
    emp_id,
    emp_name,
    salary,
    salary - LAG(salary) OVER (ORDER BY salary DESC) AS salary_diff
FROM employees;


-- Show salary difference between employee and department average salary.
SELECT
    emp_id,
    emp_name,
    dept_id,
    salary,
    salary - AVG(salary) OVER (PARTITION BY dept_id) AS diff_from_dept_avg
FROM employees;
