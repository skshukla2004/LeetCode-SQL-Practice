/* Question No' 2356: Write a solution to calculate the number of unique subjects each teacher teaches in the university.
Return the result table in any order.*/
# Code
Select 
    teacher_id,
    COUNT(DISTINCT subject_id) AS cnt
From Teacher
Group by teacher_id;
