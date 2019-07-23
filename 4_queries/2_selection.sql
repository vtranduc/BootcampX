select count(assistance_requests) as total_assistances, name
from assistance_requests
join students on students.id = student_id
where name = 'Elliot Dickinson'
group by name;