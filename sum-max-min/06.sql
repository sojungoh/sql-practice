SELECT COUNT(*) AS count
FROM (
    SELECT DISTINCT NAME
    FROM ANIMAL_INS
    WHERE NAME IS NOT NULL) A;
