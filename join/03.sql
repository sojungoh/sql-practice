SELECT A.FLAVOR
FROM (SELECT FLAVOR, SUM(TOTAL_ORDER) AS TOTAL_ORDER
      FROM FIRST_HALF
      GROUP BY FLAVOR) AS A
JOIN (
    SELECT FLAVOR, SUM(TOTAL_ORDER) AS TOTAL_ORDER
    FROM JULY
    GROUP BY FLAVOR) B ON A.FLAVOR = B.FLAVOR
ORDER BY A.TOTAL_ORDER + B.TOTAL_ORDER DESC
LIMIT 3;
