# Write your MySQL query statement below
-- select s.student_id, s.student_name, sn.subject_name, count(e.student_id) as attended_exams
-- from Students s, 
-- cross join Subjects sn
-- left join Examinations e 
-- on 
-- sn.subject_name=e.subject_name
-- group by s.student_id, s.student_name,sn.subject_name
-- order by s.student_id, s.student_name,sn.subject_name

SELECT
    S.student_id
    ,S.student_name
    ,SU.subject_name
    ,COUNT(E.student_id) attended_exams
FROM Students S
CROSS JOIN Subjects SU
LEFT JOIN Examinations E
    ON S.student_id = E.student_id
    AND SU.subject_name = E.subject_name

GROUP BY S.student_id, S.student_name, SU.subject_name
ORDER BY S.student_id, S.student_name, SU.subject_name
;