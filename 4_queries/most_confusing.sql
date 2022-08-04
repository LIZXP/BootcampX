SELECT a.id as id, name, day, chapter, count(ar.id) as total_requests
FROM assignments a
JOIN assistance_requests ar ON assignment_id = a.id
GROUP BY a.id
ORDER BY 5 DESC;