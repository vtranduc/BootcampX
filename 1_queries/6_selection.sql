select name, email, phone
from students
where github is null
and end_date is not null;