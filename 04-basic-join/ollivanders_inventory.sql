SELECT W.ID, P.AGE, W.COINS_NEEDED, W.POWER
FROM WANDS W 
JOIN WANDS_PROPERTY P
ON W.CODE = P.CODE
WHERE P.IS_EVIL = 0
AND W.COINS_NEEDED =
/* 
You use this line to only get the rows that have 
the same Power and Age. From these rows that have 
the same Power and Age you are able to get the minimum 
coins needed for that group.
 */
	(SELECT MIN(COINS_NEEDED)
	FROM WANDS W1
	JOIN WANDS_PROPERTY P1
	ON W1.CODE = P1.CODE
	WHERE W1.POWER = W.POWER
	AND P1.AGE = P.AGE)
ORDER BY W.POWER DESC, P.AGE DESC;
