# Write your MySQL query statement below
/* Write your T-SQL query statement below */
with tt as (
    select id,recorddate,temperature, LAG(temperature) over(order by recordDate) as yesterday,
    LAG(recorddate) over(order by recorddate) as lastday FROM 
    Weather 
)
select id as id  from tt WHERE temperature > yesterday and datediff(recorddate,lastday) = 1


-- select w1.id from
-- weather w1  join weather w2
-- on  datediff(w1.recorddate,w2.recorddate) = 1
-- where w1.temperature > w2.temperature   

