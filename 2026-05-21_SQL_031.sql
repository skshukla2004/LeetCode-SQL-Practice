/* Question :Write a solution to find the ids of products that are both low fat and recyclable.
   Return the result table in any order.*/
#  Code  
/*  Write your T-SQL query statement below */
  select product_id from products
  where low_fats='y' and recyclable='y'
