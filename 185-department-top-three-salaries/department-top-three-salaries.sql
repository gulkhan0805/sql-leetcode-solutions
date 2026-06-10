with ranked as(
select *, dense_rank() over(partition by departmentId order by salary desc) as rnk from employee
)
select d.name as  Department , r.name as Employee , r.salary from ranked r
left join Department d
on d.id = r.departmentId  
where r.rnk<=3
