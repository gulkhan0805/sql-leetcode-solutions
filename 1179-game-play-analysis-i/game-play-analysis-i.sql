with ranked as (
    select *, dense_rank() over(partition by player_id order by event_date) as rnk from Activity 
)
select player_id ,event_date as first_login from ranked where rnk=1