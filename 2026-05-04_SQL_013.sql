/* Question : Report for every three line segments whether they can form a triangle.
Return the result table in any order.*/
 # Code 
Select 
    x,y,z,
    CASE 
        When x + y > z AND x + z > y AND y + z > x 
        Then 'Yes'
        else 'No'
    End as triangle
from Triangle;
