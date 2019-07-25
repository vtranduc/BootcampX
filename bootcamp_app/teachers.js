const input = [process.argv[2]];

const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  host: 'localhost',
  database: 'bootcampx',
  password: 'vagrant'
});

pool.query(`
select teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
from assistance_requests
join teachers on teachers.id = assistance_requests.teacher_id
join students on students.id = assistance_requests.student_id
join cohorts on cohorts.id = students.cohort_id
where cohorts.name = $1
group by teacher, cohorts.name
order by teacher;
`, input)
.then(res => {
  // console.log(res.rows)
  res.rows.forEach(user => {
    console.log(`${input}: ${user.teacher}`);
  })
});


// const input = process.argv[2];

// const { Pool } = require('pg');

// const pool = new Pool({
//   user: 'vagrant',
//   host: 'localhost',
//   database: 'bootcampx',
//   password: 'vagrant'
// });

// pool.query(`
// select teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
// from assistance_requests
// join teachers on teachers.id = assistance_requests.teacher_id
// join students on students.id = assistance_requests.student_id
// join cohorts on cohorts.id = students.cohort_id
// where cohorts.name = '${input}'
// group by teacher, cohorts.name
// order by teacher;
// `)
// .then(res => {
//   // console.log(res.rows)
//   res.rows.forEach(user => {
//     console.log(`${input}: ${user.teacher}`);
//   })
// });