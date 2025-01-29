# Write your MySQL query statement below
select email
from Person 
Group by Email
Having Count(id)>1;