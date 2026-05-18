/* Question : Write a solution to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.
Return the result table sorted in any order.*/
# Code 
Select v.customer_id,COUNT(v.visit_id) AS count_no_trans
from Visits v
left JOIN Transactions t
on v.visit_id = t.visit_id
where t.transaction_id IS NULL
group by v.customer_id;

