/* Question : Write a solution to report the name and balance of users with a balance higher than 10000. The balance of an account is equal to the sum of the amounts of all transactions involving that account.
Return the result table in any order.*/
# Code 
Select u.name, sum(t.amount) as balance
from Users u
Join Transactions t
on u.account = t.account
group by u.account, u.name
having sum(t.amount) > 10000;
