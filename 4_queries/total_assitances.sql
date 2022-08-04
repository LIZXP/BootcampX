SELECT count(*) as total_assistances, t.name as name
FROM assistance_requests a
JOIN teachers t ON teacher_id = t.id
WHERE t.name = 'Waylon Boehm'
GROUP BY t.name;