SELECT MEMBER_NAME, REVIEW_TEXT, DATE_FORMAT(REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM MEMBER_PROFILE AS M
JOIN REST_REVIEW R ON M.MEMBER_ID = R.MEMBER_ID
JOIN (SELECT MEMBER_ID
      FROM (SELECT MEMBER_ID, COUNT(*) AS COUNT
            FROM REST_REVIEW
            GROUP BY MEMBER_ID
            ORDER BY COUNT DESC) AS A
      LIMIT 1) B ON B.MEMBER_ID = M.MEMBER_ID
ORDER BY REVIEW_DATE, REVIEW_TEXT;  