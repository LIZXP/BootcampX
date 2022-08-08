const { Pool } = require("pg");

const pool = new Pool({
  user: "labber",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

pool
  .query(
    `
SELECT t.name as teacher,c.name as cohort_name
FROM assistance_requests 
JOIN students s ON student_id = s.id
JOIN cohorts c ON c.id = s.cohort_id
JOIN teachers t on t.id = teacher_id
WHERE c.name like '%${process.argv[2] || "JUL02"}%'
GROUP BY t.name,c.name;
`
  )
  .then((res) => {
    res.rows.forEach((e) => {
      console.log(`${e.cohort_name}: ${e.teacher}`);
    });
  })
  .catch((err) => {
    console.error(`query error`, err);
  });
