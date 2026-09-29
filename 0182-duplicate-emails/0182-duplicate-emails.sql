# Write your MySQL query statement below
select email from (
    select email, count(email) as cnt_email from Person
    group by email
    having count(email)>1
)
as t