# Write your MySQL query statement below
update salary SET sex=
case sex
when 'm' then 'f'
else 'm'
end;