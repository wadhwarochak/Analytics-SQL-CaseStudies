select * from employees;

-- =====================================================================================================
-- LEVEL 1 – Basics (1–6)
-- Show each employee with the average salary of all employees.
select *, avg(salary) over () avg_salary_all from employees;

-- Display employees with department-wise average salary.
select *, avg(salary) over (partition by dept_id) avg_salary_all from employees;

-- Show each employee’s salary along with total salary of their department.
select *, sum(salary) over (partition by dept_id) total_salary_department from employees;

-- Display each employee and their salary rank within department.
select emp_id, emp_name, dept_id, salary,
rank() OVER(partition by dept_id ORDER BY salary) as salary_rank from employees;


-- Assign a row number to employees ordered by salary.
select emp_id, emp_name, dept_id, salary, ROW_NUMBER() OVER (ORDER BY salary DESC) as row_num
 from employees;


-- Find the highest salary in each department (using window function).
select distinct dept_id, max(salary) over (partition by dept_id) as max_salary from employees;

