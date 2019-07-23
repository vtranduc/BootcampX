select distinct teachers.name as teacher, cohorts.name as cohort
from assistance_requests
join teachers on teachers.id = assistance_requests.teacher_id
join students on students.id = assistance_requests.student_id
join cohorts on cohorts.id = students.cohort_id
where cohorts.name = 'JUL02'
order by teacher;
