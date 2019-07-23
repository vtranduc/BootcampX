select cohorts.name as name, avg(completed_at - started_at) as average_assistance_time
from cohorts
join students on students.cohort_id = cohorts.id
join assistance_requests on assistance_requests.student_id = students.id
group by cohorts.name
order by average_assistance_time;

-- SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
-- FROM assistance_requests 
-- JOIN students ON students.id = assistance_requests.student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY average_assistance_time;