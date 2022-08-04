SELECT avg(total.total_duration)
FROM (SELECT c.name as cohort, sum(completed_at - started_at)as total_duration
FROM assistance_requests a
JOIN students s ON student_id = s.id
JOIN cohorts c ON c.id = s.cohort_id
GROUP BY c.name) total