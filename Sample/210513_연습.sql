-- GROUP BY
-- 아이디 별로 물건 몇개 샀는지 조회
SELECT userID, SUM(amount) AS '총구매갯수'
 FROM buyTbl
 GROUP BY userID; --중복된 값이 제거됨

 -- 우리 쇼핑몰에서 가장 돈 많이 쓴 사람을 아이디 별로 조회하고 그 금액을 같이 출력하라
 SELECT userID, SUM(amount * price) AS '총구매금액'
  FROM buyTbl
  GROUP BY userID
  ORDER BY SUM(amount * price) DESC;

 SELECT userID, SUM(amount * price) AS '총구매금액'
  FROM buyTbl;

-- 평균 구매금액
SELECT AVG(price) AS [평균구매금액] FROM buyTbl;

-- 사용자 테이블에서 키가 가장 큰 사람 조회
SELECT * FROM userTbl
 ORDER BY height ASC;

-- 사용자 테이블에서 키가 가장 작은 사람 조회
SELECT * FROM userTbl
 ORDER BY height DESC;

-- 키가 제일 큰 사람과 제일 작은 사람 조회
SELECT name AS '이름', height AS '키' FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
 OR height = (SELECT MIN(height) FROM userTbl);

-- GROUP BY / HAVING
SELECT userID AS '사용자아이디' 
     , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
 -- WHERE SUM(price * amount) >= 1000 //절대불가
 GROUP BY userID
 HAVING SUM(price * amount) >= 1000;

-- 통계
-- 제품 그룹별로 사용자가 얼마만큼 구매했는지 조회
SELECT userID
     , groupName
     , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
 GROUP BY userID, groupName;

-- ROLLUP 순서에 따라 결과도 다름
SELECT userID
     , groupName
     , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
 GROUP BY ROLLUP(groupName, userID);

SELECT userID
     , groupName
     , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
 GROUP BY ROLLUP(userID, groupName);

SELECT userID
     , groupName
     , SUM(price * amount) AS [총구매금액]
  FROM buyTbl
 GROUP BY CUBE(userID, groupName);

SELECT groupName
     , SUM(price * amount) AS [총구매금액]
	 , GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
 GROUP BY ROLLUP(groupName);