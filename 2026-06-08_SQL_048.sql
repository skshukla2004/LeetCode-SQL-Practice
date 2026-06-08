/* For this problem, we will consider a manager an employee who has at least 1 other employee reporting to them.
Write a solution to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.
Return the result table ordered by employee_id.*/
# Code 
Select
    e1.employee_id,
    e1.name,
    COUNT(e2.employee_id) AS reports_count,
    ROUND(AVG(CAST(e2.age AS FLOAT)), 0) AS average_age
From Employees e1
Join Employees e2
    ON e1.employee_id = e2.reports_to
Group by e1.employee_id, e1.name
Order by e1.employee_id;
