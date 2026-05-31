/* Question No' 1741 : Write a solution to calculate the total time in minutes spent by each employee on each day at the office. Note that within one day, 
an employeecan enter and leave more than once. The time spent in the office for a single entry is out_time - in_time.
Return the result table in any order.*/
# Code 
Select
    event_day AS day,
    emp_id,
    SUM(out_time - in_time) AS total_time
From Employees
