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

SELECT age_category, ROUND (AVG(age) , 2)AS average_age
FROM (
SELECT
CASE
WHEN age BETWEEN 15 AND 17 THEN '15-17'
WHEN age BETWEEN 18 AND 20 THEN '18-20'
WHEN age BETWEEN 21 AND 22 THEN '21-22'
ELSE 'Other'
END AS age_category,
age
FROM student
) AS age_groups
GROUP BY age_category;