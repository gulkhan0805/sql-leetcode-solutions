with salary as (
    select *, dense_rank() over(partition by departmentId order by salary desc) as rnk from employee
)
select d.name as Department , s.name as Employee , s.salary from salary s
left join  Department  d
on d.id = s.departmentId
where rnk=1
