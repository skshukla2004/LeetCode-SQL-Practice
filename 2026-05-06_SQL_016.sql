/*  Question : Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
Return the result table ordered by rating in descending order.*/

# Code 
/* Write your T-SQL query statement below */
select * from cinema
where id%2!=0 and description !='boring'
order by rating desc
