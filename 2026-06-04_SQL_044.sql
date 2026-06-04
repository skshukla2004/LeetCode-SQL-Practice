/* Question No' 1484 : Write a solution to find for each date the number of different products sold and their names.
The sold products names for each date should be sorted lexicographically.
Return the result table ordered by sell_date.*/
#code 
/* Write your T-SQL query statement below */
Select
    sell_date,
    Count(DISTINCT product) AS num_sold,
    STRING_AGG(product, ',') Within Group (ORDER BY product) AS products
From (
    Select Distinct sell_date, product
    From Activities
) t
Group by sell_date
Order by sell_date;
