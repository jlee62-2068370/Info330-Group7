/*
    address and student performance(Tyler):
*/

SELECT fd.address AS addy,
	(COUNT(*) FILTER (WHERE  s.G3 >  13 AND  fd.address = 'U' )) AS urban_high_perf,
	(COUNT(*) FILTER (WHERE  s.G3 > 6 AND s.G3 < 14 AND  fd.address= 'U')) AS urban_avg_perf,
    (COUNT(*) FILTER (WHERE  s.G3 <  7 AND  fd.address= 'U')) AS urban_low_perf,
    (COUNT(*) FILTER (WHERE  s.G3 >  13 AND  fd.address= 'R' )) AS rural_high_perf,
	(COUNT(*) FILTER (WHERE  s.G3 > 6 AND s.G3 < 14 AND  fd.address = 'R' )) AS rural_avg_perf,
	(COUNT(*) FILTER (WHERE  s.G3 <  7 AND  fd.address = 'R' )) AS rural_low_perf
FROM Student s
JOIN Family_Dynamic fd ON fd.student_id = s.student_id;

/*
   sex and student performance(Tyler):
*/

SELECT s.sex AS sex,
	ROUND((COUNT(*) FILTER (WHERE  s.G3 >  13 AND  s.sex = 'F' ) * 100.0 / COUNT(*) FILTER(WHERE s.sex = 'F')), 2) AS female_percentage_high_perf,
	ROUND((COUNT(*) FILTER (WHERE  s.G3 > 6 AND s.G3 < 14 AND  s.sex = 'F')  * 100.0 / COUNT(*) FILTER(WHERE s.sex = 'F')), 2) AS female_percentage_avg_perf,
    ROUND((COUNT(*) FILTER (WHERE  s.G3 <  7 AND  s.sex = 'F')  * 100.0 / COUNT(*) FILTER(WHERE s.sex = 'F')), 2) AS female_percentage_low_perf,
    ROUND((COUNT(*) FILTER (WHERE  s.G3 >  13 AND  s.sex = 'M' )  * 100.0 / COUNT(*) FILTER(WHERE s.sex = 'M')), 2) AS male_percentage_high_perf,
	ROUND((COUNT(*) FILTER (WHERE  s.G3 > 6 AND s.G3 < 14 AND  s.sex = 'M' )  * 100.0 / COUNT(*) FILTER(WHERE s.sex = 'M')), 2) AS male_percentage_avg_perf,
	ROUND((COUNT(*) FILTER (WHERE  s.G3 <  7 AND  s.sex = 'M' ) * 100.0 / COUNT(*) FILTER(WHERE s.sex = 'M')), 2) AS male_percentage_low_perf
FROM Student s;