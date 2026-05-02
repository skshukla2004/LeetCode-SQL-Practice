/* Question : Write a solution to find all the classes that have at least five students.
Return the result table in any order.*/

# Code
/* Write your T-SQL query statement below */
Select class
from Courses
group  by class
having Count(student) >= 5;
