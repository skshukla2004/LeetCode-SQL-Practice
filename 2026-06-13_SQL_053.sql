/* Question No' 626: Write a solution to swap the seat id of every two consecutive students. If the number of students is odd, the id of the last student is not swapped.
Return the result table ordered by id in ascending order.*/
# Code 
/* Write your T-SQL query statement below */
Select
    Case
        When id % 2 = 1
             And id < (Select Max(id) From Seat)
        Then id + 1
        When id % 2 = 0
        Then id - 1
        Else id
    End As id,
    student
From Seat
Order By id;
