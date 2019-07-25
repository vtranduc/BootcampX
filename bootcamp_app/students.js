// const input = process.argv.slice(2)

const cohortName = process.argv[2];
const limit = process.argv[3] || 5;
// Store all potentially malicious values in an array. 
// const values = [`%${cohortName}%`, limit];

const values = [`%${cohortName}%`, limit];

console.log(values)

const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  host: 'localhost',
  database: 'bootcampx',
  password: 'vagrant'
});


pool.query(`
  SELECT students.id as student_id, students.name as name, cohorts.name as cohort
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  WHERE cohorts.name like $1
  LIMIT $2;
`, values)
.then(res => {
  // console.log('check1')
  res.rows.forEach(user => {
    //console.log('check3')
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
  // console.log('check2')
})
.catch(err => {console.log('Failed')});