-- Use of multiple CTE's

WITH CTE_EXAMPLE(employee_id, gender , birth_date,Average) AS
(
SELECT employee_id, gender , birth_date , avg(age) over()
FROM employee_demographics as dem
where birth_date > '1985-01-01'
group by employee_id, gender , birth_date
),
CTE_EXAMPLE2 as
(
select employee_id, salary
from employee_salary as sal
where salary > 10000
)

select *
from CTE_EXAMPLE
JOIN CTE_EXAMPLE2
	on CTE_EXAMPLE.employee_id=CTE_EXAMPLE2.employee_id
;


Create temporary table salary_under_50k
select *
from employee_salary 
where salary >= 50000;

select * from salary_under_50k;