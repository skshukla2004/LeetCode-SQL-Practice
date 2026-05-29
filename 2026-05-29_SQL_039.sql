/* Question No'  1795  : Write a solution to rearrange the Products table so that each row has (product_id, store, price). 
If a product is not available in a store, do not include a row with that product_id and store combination in the result table.
Return the result table in any order.*/
# Code 
Select product_id, 'store1' AS store, store1 as price
From Products
Where store1 IS Not null
Union all
Select product_id, 'store2' AS store, store2 as  price
From Products
Where store2 IS Not null
Union all
Select product_id, 'store3' AS store, store3 as price
From Products
Where store3 IS Not null;
