# HackerRank MySQL

My solutions for [HackerRank MySQL](https://www.hackerrank.com/domains/sql)

## MySQL Notes

### List of Statements

+ SELECT, SELECT DISTINCT
+ FROM table
+ WHERE
+ COUNT, AVG, SUM
+ MIN, MAX, ROUND(attribute, no_of_dec_place), FLOOR, CEILING
+ JOIN ... ON
	* (INNER) JOIN: Returns records that have matching values in both tables
	
	* LEFT (OUTER) JOIN: Return all records from the left table, and the matched records from the right table
	
	* RIGHT (OUTER) JOIN: Return all records from the right
	table, and the matched records from the left table
	
	* FULL (OUTER) JOIN: Return all records when there is a match in either left or right table
+ GROUP BY, HAVING, EXISTS, IN, BETWEEN, LIKE, AND, OR, NOT
+ Wildcards:
	+ LIKE 'a%' : starts with "a"
	+ LIKE '%a' : ends with "a"
	+ LIKE 'a_%_%: starts with "a" and at least 3 characters long

+ CONCAT: CONCAT(expression1, expression2, expression3,...)

+ CASE
```
SELECT
  CASE
    WHEN A = B AND B = C then "Equilateral"
    WHEN A + B <= C then "Not A Triangle"
    WHEN A + C <= B then "Not A Triangle"
    WHEN B + C <= A then "Not A Triangle"
    WHEN A = B AND A != C then "Isosceles"
    WHEN A = C AND A != B then "Isosceles"
    WHEN B = C AND A != B then "Isosceles"
    ELSE "Scalene"
  END
FROM triangles
```

+ IF: IF(condition, value_if_true, value_if_false)
```
IF n > m THEN SET s = '>';
ELSEIF n = m THEN SET s = '=';
ELSE SET s = '<';
END IF;
```


+ WHILE
```
CREATE PROCEDURE dowhile()
BEGIN
  DECLARE v1 INT DEFAULT 5;

  WHILE v1 > 0 DO
    ...
    SET v1 = v1 - 1;
  END WHILE;
END;
```

	

