# Write your MySQL query statement below
Select E1.name as Employee
From Employee E1 
join Employee E2
on E1.managerId=E2.id 
where E1.salary>E2.salary;