select count(assistance_requests) as total_assistances
from assistance_requests
join teachers on teacher_id = teachers.id
where name = 'Waylon Boehm'
group by teacher_id;