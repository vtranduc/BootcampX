select sum(assignment_submissions.duration)
from assignment_submissions
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id
where cohorts.name = 'FEB12';