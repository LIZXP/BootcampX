SELECT c.name as cohort_name, count(*) as student_count 
FROM students s
JOIN cohorts c ON cohort_id = c.id
GROUP BY c.name
HAVING count(*) >= 18
ORDER by student_count;