SET @i = -1;

SELECT B.HOUR, COUNT(ANIMAL_ID) AS COUNT
FROM ANIMAL_OUTS AS A
RIGHT JOIN (
    SELECT (@i := @i + 1) AS HOUR
    FROM ANIMAL_OUTS
    WHERE @i < 23) B ON HOUR(A.DATETIME) = B.HOUR
GROUP BY B.HOUR
ORDER BY B.HOUR;
