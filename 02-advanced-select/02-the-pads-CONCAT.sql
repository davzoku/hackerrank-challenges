SELECT CONCAT(RTRIM(Name),'(',LEFT(Occupation,1),')')
FROM Occupations
ORDER BY Name ASC;
SELECT CONCAT('There are a total of ',Count(*),' ',LOWER(Occupation),'s.')
From Occupations
GROUP BY Occupation
Order BY Count(*) ASC, Occupation ASC;