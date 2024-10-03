create database student_factors;
use student_factors;
set sql_safe_updates=0;
describe Student_factors_project;
describe Student_factors_project;
select * from Student_factors_project;
 SELECT AVG(Hours_Studied) FROM Student_factors_project WHERE Motivation_Level = 'High';
 SELECT COUNT(*) FROM Student_factors_project WHERE Parental_Involvement = 'Low' AND Access_to_Resources = 'High';
 SELECT School_Type, AVG(Exam_Score) FROM Student_factors_project GROUP BY School_Type;
 SELECT 
  CASE 
    WHEN Family_Income < 50000 THEN 'Low'
    WHEN Family_Income < 100000 THEN 'Medium'
    ELSE 'High'
  END AS Family_Income_Category
FROM Student_factors_project;
ALTER TABLE Student_factors_project
ADD Family_Income_Category VARCHAR(255);
UPDATE Student_factors_project
SET Family_Income_Category = 
  CASE 
    WHEN Family_Income < 50000 THEN 'Low'
    WHEN Family_Income < 100000 THEN 'Medium'
    ELSE 'High'
  END;
  
SELECT count(*) FROM Student_factors_project WHERE Peer_Influence LIKE 'P%';
SELECT AVG(Sleep_Hours) FROM Student_factors_project WHERE Motivation_level = 'High';
 
SELECT School_Type, AVG(Exam_Score) 
FROM Student_factors_project  
GROUP BY School_Type 
ORDER BY AVG(Exam_Score) DESC;
SELECT MAX(Exam_Score) 
FROM Student_factors_project;
SELECT School_Type, SUM(Exam_Score) 
FROM Student_factors_project 
GROUP BY School_Type;
 SELECT Gender, AVG(Hours_Studied) FROM Student_factors_project GROUP BY Gender;
 SELECT COUNT(*) FROM Student_factors_project WHERE Parental_Involvement = 'High' AND Access_to_Resources = 'Low';
 SELECT AVG(Exam_Score) FROM Student_factors_project WHERE Tutoring_Sessions = 'High';
 SELECT Family_Income, AVG(Exam_Score) FROM Student_factors_project GROUP BY Family_Income;
SELECT COUNT(*) 
FROM Student_factors_project 
WHERE Internet_Access = 'Low' AND Extracurricular_Activities = 'High';
select Gender,avg(Physical_Activity) from student_factors_project group by Gender;
select count(*) Parental_Involvement from Student_factors_project where Gender='female';
select count(*) Parental_Involvement from Student_factors_project where Gender='male';
select count(*) Exam_Score from Student_factors_project where Learning_Disabilities='No' AND Motivation_Level='Low';
select count(*) Exam_Score from Student_factors_project where Internet_Access='No' AND Parental_Involvement='low';
select AVG (Exam_Score) from Student_factors_project where Extracurricular_Activities='yes';
SELECT AVG(Hours_Studied),Parental_Involvement
FROM Student_factors_project 
GROUP BY  Parental_Involvement;
select*from Student_factors_project;
SELECT AVG(Exam_Score),Motivation_Level
FROM Student_factors_project 
GROUP BY  Motivation_Level;
SELECT Previous_Scores, Exam_Score, 
       (Exam_Score - Previous_Scores) AS Score_Difference,
       (Exam_Score / Previous_Scores) * 100 AS Percentage_Change
FROM Student_factors_project;
SELECT School_Type, AVG(Exam_Score) AS Average_Exam_Score, 
       AVG(Hours_Studied) AS Avg_Hours_Studied, 
       AVG(Attendance) AS Avg_Attendance,
       AVG(Sleep_Hours) AS Avg_Sleep_Hours,
       AVG(Previous_Scores) AS Avg_Previous_Scores
FROM Student_factors_project
GROUP BY School_Type;
SELECT Gender,AVG (Exam_Score) AS Average_Exam_Score, 
       AVG(Hours_Studied) AS Avg_Hours_Studied, 
       AVG(Attendance) AS Avg_Attendance,
       AVG(Sleep_Hours) AS Avg_Sleep_Hours,
       AVG(Previous_Scores) AS Avg_Previous_Scores
FROM Student_factors_project
GROUP BY Gender;
SELECT Motivation_Level, AVG(Exam_Score) AS Average_Exam_Score, 
       AVG(Hours_Studied) AS Avg_Hours_Studied, 
       AVG(Attendance) AS Avg_Attendance,
       AVG(Sleep_Hours) AS Avg_Sleep_Hours,
       AVG(Previous_Scores) AS Avg_Previous_Scores
FROM Student_factors_project
GROUP BY Motivation_Level;
SELECT School_Type, 
       MAX(Exam_Score) AS Max_Exam_Score, 
       MIN(Exam_Score) AS Min_Exam_Score
FROM Student_factors_project
GROUP BY School_Type;
SELECT School_Type, Parental_Involvement, 
       AVG(Exam_Score) AS Average_Exam_Score
FROM Student_factors_project
GROUP BY School_Type, Parental_Involvement;
SELECT School_Type, 
       CASE 
           WHEN Exam_Score >= 90 THEN 'A'
           WHEN Exam_Score >= 80 THEN 'B'
           WHEN Exam_Score >= 70 THEN 'C'
           WHEN Exam_Score >= 60 THEN 'D'
           ELSE 'E'
       END AS Score_Grade
FROM Student_factors_project
GROUP BY School_Type, Score_Grade
ORDER BY School_Type, Score_Grade;















