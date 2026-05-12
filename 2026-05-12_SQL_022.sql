/* Question : Write a solution to find all the authors that viewed at least one of their own articles.
Return the result table sorted by id in ascending order. */
/* Write your T-SQL query statement below */
# Code
select  distinct(author_id ) as id from views
where  viewer_id >=1 and viewer_id = author_id
order by id asc
