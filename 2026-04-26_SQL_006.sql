/* Question : Write a solution to find the first login date for each player.
Return the result table in any order.*/

/* Write your T-SQL query statement below */
# Code 
select player_id,min(event_date) as first_login 
from Activity
group by player_id
 
