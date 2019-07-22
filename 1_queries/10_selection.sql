select students.name as student_name, cohorts.name as cohort_name, cohorts.start_date as cohort_start_date, students.start_date as student_start_date
from students join cohorts on cohort_id = cohorts.id
where students.start_date != cohorts.start_date;