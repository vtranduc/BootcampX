select assignments.id, assignments.name, assignments.day, assignments.chapter, assignments.name, count(assistance_requests) as total_requests
from assignments
join assistance_requests on assistance_requests.assignment_id = assignments.id
group by assignments.id
order by total_requests desc;