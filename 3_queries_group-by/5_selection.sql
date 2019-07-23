select students.name as student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration
from students
join assignment_submissions on students.id = assignment_submissions.student_id
join assignments on assignments.id = assignment_id
where end_date is null
group by student
order by average_assignment_duration;