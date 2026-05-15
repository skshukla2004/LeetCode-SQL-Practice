/* Question :Write a solution to report the distance traveled by each user.
Return the result table ordered by travelled_distance in descending order, if two or more users traveled the same distance,
order them by their name in ascending order.*/
# Code 
SELECT 
    u.name,
    ISNULL(SUM(r.distance), 0) AS travelled_distance
from Users u
Left Join Rides r
    ON u.id = r.user_id
Group by u.id, u.name
Order by travelled_distance DESC, u.name ASC;
