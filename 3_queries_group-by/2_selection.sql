select cohorts.name as cohort_name, count(students.cohort_id) as student_count
from cohorts
join students on students.cohort_id = cohorts.id
group by cohorts.name
having count(*) >= 18
order by count(students.cohort_id);