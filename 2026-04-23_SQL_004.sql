/* Question : Write a solution to find all customers who never order anything.
   Return the result table in any order.*/

/* Write your T-SQL query statement below */
# Code
select name as customers from customers as c
left join orders as o
on c.id = o.customerid
where o.id is null
