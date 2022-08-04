SELECT t.name as teacher, s.name as student, a.name as assignment, asr.completed_at - asr.started_at as durition
FROM students s
JOIN assistance_requests asr ON asr.student_id = s.id
JOIN assignments a ON a.id = asr.assignment_id
JOIN teachers t ON asr.teacher_id = t.id
ORDER BY 4;