/*
Query for sum of each hacker's max score for all challenges (total score)
For each challenge, need to find the max score obtained and add everything to get total score
Do not display if max score = 0
*/

SELECT H.HACKER_ID, H.NAME, SUM(S.SCORE) AS TOTAL_SCORE
FROM HACKERS H, SUBMISSIONS S
WHERE H.HACKER_ID = S.HACKER_ID
GROUP BY H.HACKER_ID, H.NAME
AND TOTAL_SCORE =
	(SELECT HACKER_ID, MAX(SCORE)
	FROM SUBMISSIONS
	GROUP BY CHALLENGE_ID, HACKER_ID) MAX_SCORE
HAVING TOTAL_SCORE >0
ORDER BY TOTAL_SCORE DESC, H.HACKER_ID ASC;