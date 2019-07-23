select students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
from students
join assignment_submissions on assignment_submissions.student_id = students.id
where end_date is null
group by student
order by average_assignment_duration desc;