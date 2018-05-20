SELECT H.HACKER_ID, H.NAME, COUNT(*) AS TOTAL
FROM HACKERS H, CHALLENGES C
WHERE H.HACKER_ID = C.HACKER_ID
GROUP BY H.HACKER_ID, H.NAME
/* hacker_id and name are unique to each other */
HAVING TOTAL = 
/* get entries who have max no. of challenges 
If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.
*/
	(SELECT COUNT(*)
	FROM CHALLENGES
	GROUP BY HACKER_ID
	ORDER BY COUNT(*) DESC LIMIT 1)
OR TOTAL IN
	(SELECT TOTAL2
	FROM (
		SELECT COUNT(*) AS TOTAL2
		FROM HACKERS H2, CHALLENGES C2
		WHERE H2.HACKER_ID = C2.HACKER_ID
		GROUP BY H2.HACKER_ID, H2.NAME
	) COUNTS
/* COUNTS IS AN ALIAS 
If more than one student created the same number of challenges, then sort the result by hacker_id. */
	GROUP BY TOTAL2
	HAVING COUNT(*) = 1)

ORDER BY TOTAL DESC, H.HACKER_ID ASC;