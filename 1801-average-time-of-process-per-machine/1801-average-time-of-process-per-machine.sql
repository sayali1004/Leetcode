# Write your MySQL query statement below
-- select machine_id , 
-- Round(sum(case when activity_type='start' then timestamp*-1 ELSE timestamp END)*1.0/(SELECT  count(DISTINCT process_id)),3) AS processing_time
-- from Activity
-- group by machine_id

select a.machine_id, round(avg(b.timestamp-a.timestamp),3) as processing_time
from activity a , activity b
where 
a.activity_type='start'
and
b.activity_type='end'
and
a.machine_id=b.machine_id
and
a.process_id=b.process_id
group by machine_id