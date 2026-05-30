/* Question No' 1211 : We define query quality as:
The average of the ratio between query rating and its position.
We also define poor query percentage as:
The percentage of all queries with rating less than 3.
Write a solution to find each query_name, the quality and poor_query_percentage.

Both quality and poor_query_percentage should be rounded to 2 decimal places.
Return the result table in any order.*/
# Code 
Select  query_name,Round(AVG(CAST(rating AS float) / position), 2) AS quality,
Round(AVG( CASE  When rating < 3 then 100.0
     Else 0
            end ), 2) AS poor_query_percentage
fROM Queries
Group by query_name;
