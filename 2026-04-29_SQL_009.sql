/* Question : Find the names of the customer that are either:

referred by any customer with id != 2.
not referred by any customer.
Return the result table in any order.*/
# Code 
/* Write your T-SQL query statement below */
select name from customer 
where referee_id !=2 or referee_id  is null
