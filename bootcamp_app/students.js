const { Pool } = require("pg");

const pool = new Pool({
  user: "labber",
  password: "123",
  host: "localhost",
  database: "bootcampx",
});

const queryString = `
SELECT s.id, s.name as student_name, c.name as cohort_name
FROM students s
JOIN cohorts c ON c.id = cohort_id
WHERE c.name like $1
LIMIT $2;
`;
const limit = process.argv[3] || 5;
const value = [`%${process.argv[2]}%`, limit];

pool
  .query(queryString, value)
  .then((res) => {
    res.rows.forEach((user) => {
      console.log(
        `${user.student_name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`
      );
    });
  })
  .catch((err) => console.error("query error", err.stack));
