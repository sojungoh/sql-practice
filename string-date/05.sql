SELECT USER_ID, NICKNAME, 
CONCAT(CITY, ' ', STREET_ADDRESS1, ' ', STREET_ADDRESS2) AS 전체주소, 
CONCAT(SUBSTR(TLNO, 1, 3), '-', SUBSTR(TLNO, 4, 4), '-', SUBSTR(TLNO, 8, 4)) AS 전화번호
FROM USED_GOODS_USER
JOIN USED_GOODS_BOARD ON USER_ID = WRITER_ID
GROUP BY USER_ID
HAVING COUNT(*) >= 3
ORDER BY USER_ID DESC;