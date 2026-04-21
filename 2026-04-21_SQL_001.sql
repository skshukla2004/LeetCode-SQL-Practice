/* Write a solution to report the first name, last name, city, and state of each person in the Person table. 
If the address of a personId is not present in the Address table, report null instead.
Return the result table in any order.*/
/* Write your T-SQL query statement below */

select p.firstname, p.lastname, a.city, a.state from person as p 
 left join address as a 
 on p.personid = a.personid
