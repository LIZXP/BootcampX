SELECT c.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests a
JOIN students s ON student_id = s.id
JOIN cohorts c ON c.id = s.cohort_id
GROUP BY c.name
ORDER by 2;