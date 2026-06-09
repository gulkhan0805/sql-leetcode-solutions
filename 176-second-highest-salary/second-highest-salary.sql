with ranked as (
select *, dense_rank() over (order by salary desc) as rnk from Employee
)
select max(salary) as SecondHighestSalary from ranked where rnk =2


-- --
-- with ranked as (
--     select id, salary, dense_rank() over (order by salary desc) as rnk from employee
-- )
-- select max(salary)  as SecondHighestSalary  from ranked where rnk= 2






