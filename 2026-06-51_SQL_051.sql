 /* Question No' 180: Find all numbers that appear at least three times consecutively.
Return the result table in any order.*/
Select DISTINCT l1.num AS ConsecutiveNums
From Logs l1
Join Logs l2
    ON l1.id + 1 = l2.id
Join Logs l3
    ON l1.id + 2 = l3.id
Where l1.num = l2.num
  and l2.num = l3.num;
