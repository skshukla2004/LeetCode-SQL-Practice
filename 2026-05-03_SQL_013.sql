/* Question : Write a solution to find the names of all the salespersons who did not have any orders related to the company with the name "RED".
Return the result table in any order.*/
# Code 
Select name
from SalesPerson
Where sales_id Not in (Select sales_id
    from Orders
    Where com_id = ( Select com_id
    from Company
    Where name = 'RED'
    )
)
