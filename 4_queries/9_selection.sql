select avg(total_duration) as average_total_duration
from (
  select cohorts.name as cohort, sum(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
  from assistance_requests
  join students on students.id = assistance_requests.student_id
  join cohorts on cohorts.id = students.cohort_id
  group by cohort
  order by total_duration
) as total_duration