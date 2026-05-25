/* Question : Write a solution to fix the names so that only the first character is uppercase and the rest are lowercase.
Return the result table ordered by user_id.*/
# Code 
Select 
    user_id,
    CONCAT(
        Upper(Left(name, 1)),
        Lower(Substring(name, 2, LEN(name)))
    ) AS name
From Users
Order by user_id;
