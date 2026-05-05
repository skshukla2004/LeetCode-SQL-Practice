/* Question : A single number is a number that appeared only once in the MyNumbers table.
   Find the largest single number. If there is no single number, report null.*/

# Code 
/* Write your T-SQL query statement below */
select max(num) as num from 
(select num from Mynumbers
group by num 
having count(num) = 1
) as singlenumber;
