# Write your MySQL query statement below
Select max(num) as num
From (
select num from MyNumbers
    group by num
    having count(num)=1
)  as n



