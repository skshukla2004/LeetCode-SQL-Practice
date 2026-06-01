/* Question no' 1633:  Write a solution to find the percentage of the users registered in each contest rounded to two decimals.
Return the result table ordered by percentage in descending order. In case of a tie, order it by contest_id in ascending order.*/
# Code 
Select
    contest_id,
    Round(
        Count(user_id) * 100.0 /
        (Select Count(*) FROM Users),
        2
    ) as percentage
From Register
Group by contest_id
Order by percentage DESC, contest_id ASC;
