/* Question : Employees can belong to multiple departments. When the employee joins other departments, they need to decide which department is their primary department.
Note that when an employee belongs to only one department, their primary column is 'N'
Write a solution to report all the employees with their primary department. For employees who belong to one department, report their only department.
Return the result table in any order.*/
# Code 
/* Write your T-SQL query statement below */
Select employee_id, department_id
From Employee
Where primary_flag = 'Y'
Union
Select e.employee_id, e.department_id
From Employee e
Where e.employee_id IN (
    Select employee_id
    From Employee
    Group by  employee_id
    Having COUNT(*) = 1
)


