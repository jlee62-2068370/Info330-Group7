-- Query 1

SELECT pe1.edu_description AS Medu, pe2.edu_description AS Fedu,
    ROUND(AVG(s.G1), 2) AS G1_average,
    ROUND(AVG(s.G2), 2) AS G2_average,
    ROUND(AVG(s.G3), 2) AS G3_average
FROM Student s
JOIN Family_Status fs ON s.student_id = fs.student_id
JOIN Parent_edu pe1 ON fs.Medu = pe1.edu_level
JOIN Parent_edu pe2 ON fs.Fedu = pe2.edu_level
GROUP BY fs.Medu, fs.Fedu;


--Query2

SELECT r.reason, s.romantic,
       ROUND(AVG(s.Dalc), 2) AS average_Dalc,
       ROUND(AVG(s.Walc), 2) AS average_Walc,
       ROUND(AVG(s.goout), 2) AS average_goout,
       ROUND(AVG(s.G1), 2) AS average_G1,
       ROUND(AVG(s.G2), 2) AS average_G2,
       ROUND(AVG(s.G3), 2) AS average_G3
FROM Student s
JOIN Reason_Map rm ON s.student_id = rm.student_id
JOIN Reason r ON rm.reason = r.reason
WHERE s.Dalc > 0 AND s.Walc > 0 -- Filter for students who consume alcohol
GROUP BY r.reason, s.romantic;