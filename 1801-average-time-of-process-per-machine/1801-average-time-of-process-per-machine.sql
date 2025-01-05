# Write your MySQL query statement below
select machine_id , 
Round(sum(case when activity_type='start' then timestamp*-1 ELSE timestamp END)*1.0/(SELECT  count(DISTINCT process_id)),3) AS processing_time
from Activity
group by machine_id