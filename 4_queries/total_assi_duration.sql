SELECT day, count(name) as number_of_assignments, sum(duration) as duration
FROM assignments
GROUP BY 1
ORDER BY 1;