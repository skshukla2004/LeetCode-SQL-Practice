/*Write a solution to find the employees who earn more than their managers.
Return the result table in any order.*/ 

/* Write your T-SQL query statement below */

select e1.name as employee  from employee as e1
join employee as e2 
on e1.managerid = e2.id 
where e1.salary > e2.salary

