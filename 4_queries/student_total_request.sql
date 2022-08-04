SELECT count(*) as total_assistances, s.name as name
FROM assistance_requests a
JOIN students s ON student_id = s.id
WHERE s.name = 'Waylon Boehm'
GROUP BY s.name;