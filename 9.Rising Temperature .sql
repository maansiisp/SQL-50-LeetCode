# Write your MySQL query statement below 
  // -- using Self join and DATEDIFF( a, b ) = 1 ( difference) \\
SELECT w1.id
FROM Weather w1
join Weather w2
ON DATEDIFF(w1.recordDate , W2.recordDate) = 1
where w1.temperature > w2.temperature 

// --using LAG window function LAG ( col , 1 ) over (order by col ) AS prev_temp --- ( where 1 shows value from 1 row before it) \\
  select id
from (
select id, recordDate , temperature,
LAG ( temperature, 1) over (order by recordDate ) AS prev_temp
from Weather
) a
where temperature > prev_temp
