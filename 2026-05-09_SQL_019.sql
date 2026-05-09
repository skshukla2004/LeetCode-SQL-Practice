/* Question : Write a solution to report the product_name, year, and price for each sale_id in the Sales table.*/
# Code 
/* Write your T-SQL query statement below */
select product_name,year,price from sales s
join product p on s.product_id = p.product_id
