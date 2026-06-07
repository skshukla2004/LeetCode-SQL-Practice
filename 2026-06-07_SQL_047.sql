/*Write a solution to report the IDs of all the employees with missing information. The information of an employee is missing if:
The employee's name is missing, or
The employee's salary is missing.
Return the result table ordered by employee_id in ascending order.*/
# Code 
/* Write your T-SQL query statement below */
Select employee_id
From Employees
Where employee_id NOT IN (
    Select employee_id
    From Salaries
)
Union
Select employee_id
From Salaries
Where employee_id NOT IN (
    Select employee_id
    FROM Employees
)

Order by employee_id;
