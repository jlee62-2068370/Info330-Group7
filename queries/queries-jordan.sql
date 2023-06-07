/*
    Primary reason for a student's alcohol consumption and average age group per reason (Jordan)
*/
SELECT reason, COUNT(*) AS occurrence
FROM Reason_Map
GROUP BY reason
ORDER BY occurrence DESC;

SELECT r.reason AS primary_reason, ROUND(AVG(s.age), 1) AS average_age_group
FROM Student s
JOIN Reason_Map rm ON s.student_id = rm.student_id
JOIN Reason r ON rm.reason = r.reason
GROUP BY r.reason;

/*
    Parental status and alcohol consumption (Jordan):
*/
SELECT fd.Pstatus AS parental_status,
    ROUND((COUNT(*) FILTER (WHERE r.reason = 'home') * 100.0 / COUNT(*)), 2) AS home_percentage,
    ROUND((COUNT(*) FILTER (WHERE r.reason <> 'home') * 100.0 / COUNT(*)), 2) AS other_percentage
FROM Student s
JOIN Reason_Map rm ON s.student_id = rm.student_id
JOIN Reason r ON rm.reason = r.reason
JOIN Family_Dynamic fd ON fd.student_id = s.student_id
WHERE fd.Pstatus = 'A' AND s.Dalc > 0;
