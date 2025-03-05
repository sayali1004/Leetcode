# Write your MySQL query statement below
select p.firstName, p.lastName, a.city,a.state from Person p 
left Join Address a
on p.personID=a.personId
group by p.firstName, p.lastName, a.city,a.state;