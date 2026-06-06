/* Question No' 1873: Write a solution to calculate the bonus of each employee. The bonus of an employee is 100% of their salary if the ID of the employee is an odd number and the employee's name does not start with the character 'M'. The bonus of an employee is 0 otherwise.
Return the result table ordered by employee_id.*/
# Code
/* Write your T-SQL query statement below */
Select employee_id,
    Case
        When employee_id % 2 = 1 
             AND name NOT LIKE 'M%'
        Then salary
        Else 0
    End AS bonus
From Employees
Order by employee_id;
