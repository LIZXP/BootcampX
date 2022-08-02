SELECT sum(a.duration)
FROM students s
JOIN cohorts c ON s.cohort_id = c.id
JOIN assignment_submissions a ON s.id = a.student_id
WHERE c.name = 'FEB12';