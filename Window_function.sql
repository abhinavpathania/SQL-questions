Select * from employee_demographics;
select * from employee_salary;

-- Using Group By Clause
Select gender,salary,avg(salary)
from employee_salary as sal
Join employee_demographics as dem
on sal.employee_id=dem.employee_id
Group by gender, salary;

-- Using 2 paramteres which will cause partioning
Select dem.first_name,gender,salary,avg(salary)
from employee_salary as sal
Join employee_demographics as dem
on sal.employee_id=dem.employee_id
Group by dem.first_name,gender,salary;

-- Using Window Function

Select dem.first_name,gender,salary,avg(salary) Over()
from employee_salary as sal
Join employee_demographics as dem
on sal.employee_id=dem.employee_id;

-- Use of Partition By

Select dem.first_name,gender,salary,avg(salary) Over(partition by gender)
from employee_salary as sal
Join employee_demographics as dem
on sal.employee_id=dem.employee_id;

-- Rolling Total

Select dem.first_name,gender,salary,sum(salary) Over(partition by gender order by dem.employee_id) as rolling_total
from employee_salary as sal
Join employee_demographics as dem
on sal.employee_id=dem.employee_id;