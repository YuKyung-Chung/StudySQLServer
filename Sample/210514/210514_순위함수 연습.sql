-- 순위함수
SELECT ROW_NUMBER() OVER(ORDER BY height DESC) AS '키순위'
	 , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL;

-- 공동순위 처리
SELECT RANK() OVER(ORDER BY height DESC) AS '키순위'
	 , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL;

-- 공동순위 후 숫자 순서대로 처리
SELECT DENSE_RANK() OVER(ORDER BY height DESC) AS '키순위'
	 , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL;

SELECT ROW_NUMBER() OVER(PARTITION BY addr ORDER BY height DESC) AS '키순위'
	 , name, height, addr
  FROM userTbl
 WHERE height IS NOT NULL;

SELECT RANK() OVER(ORDER BY SUM(price * amount) DESC) AS '구매금액'
     , userID, SUM(price* amount) AS '사용자별구매금액'
  FROM buyTbl
 GROUP BY userID
 FOR JSON AUTO;

