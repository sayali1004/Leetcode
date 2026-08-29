# Write your MySQL query statement below
select email as Email from(
select  email, count(email) from Person 
group by email
having count(email)>1
)
as t