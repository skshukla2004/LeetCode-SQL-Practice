/* Questio No'1288 : Write a solution to find the number of times each student attended each exam.
Return the result table ordered by student_id and subject_name.*/
# Code 
Select
    s.student_id,
    s.student_name,
    sub.subject_name,
    Count(e.subject_name) AS attended_exams
From Students s
Cross JOIN Subjects sub
Left JOIN Examinations e
    on s.student_id = e.student_id
    and sub.subject_name = e.subject_name
Group by s.student_id,s.student_name,sub.subject_name
Order by s.student_id,sub.subject_name;
