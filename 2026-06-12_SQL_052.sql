/* Question No' 608: Each node in the tree can be one of three types:
"Leaf": if the node is a leaf node.
"Root": if the node is the root of the tree.
"Inner": If the node is neither a leaf node nor a root node.
Write a solution to report the type of each node in the tree.
Return the result table in any order.*/
/* Write your T-SQL query statement below */
Select
    id,
    Case
        When p_id is Null Then'Root'
        When id in (Select DISTINCT p_id
                    From Tree
                    Where p_id is NOT Null) Then 'Inner'
        Else 'Leaf'
    END as type
From Tree;
