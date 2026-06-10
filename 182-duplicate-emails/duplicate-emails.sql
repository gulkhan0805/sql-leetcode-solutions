with ranked as (
select email, count(*) as cnt from person 
group by email 
)
select email from ranked where cnt>1