select assignments.day, count(assignments.*), sum(duration) as duration
from assignments
group by assignments.day
order by assignments.day;