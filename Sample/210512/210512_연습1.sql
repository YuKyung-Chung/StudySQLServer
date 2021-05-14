USE sqlDB;
GO

SELECT * FROM userTbl
	WHERE userID = 'KKH';

-- 사용자 테이블에서 출생년도 1970에서 1980 사이
-- 이고 키가 180 이상인 사람을 조회.
SELECT * FROM userTbl
	WHERE birthYear >= 1970 AND birthYear <= 1980
	AND height >= 180;

-- 출생년도가 1970년 이후이거나 키가 182 이상인 사람 조회
SELECT * FROM userTbl
	WHERE birthYear >= 1970 OR height >= 180;

-- BETWEEN a AND b: a와 b 사이
SELECT * FROM userTbl
	WHERE birthYear BETWEEN 1970 AND 1980
	AND height >= 180;

-- 사용자 중에 지역이 경남, 전남, 경북인 사람만 조회
SELECT [name], userID, addr FROM userTbl
	WHERE addr = '경남' OR addr = '전남' OR addr = '경북';

SELECT [name], userID, addr FROM userTbl
	WHERE addr IN ('경남', '전남', '경북');

-- LIKE절(문자열에서 속하는 문자열이 있는(contain))
SELECT name, height, addr FROM userTbl
	WHERE name LIKE '김%';

SELECT name, height, addr FROM userTbl
	WHERE name LIKE '_비킴';

-- SubQuery
-- 키가 175보다 큰 사람들 조회
SELECT * FROM userTbl
	WHERE height > 175;

-- 김경호보다 키가 큰 사람들 조회
SELECT * FROM userTbl
	WHERE height > (SELECT height FROM userTbl WHERE name = '김경호');

-- 경남에 사는 사람들보다 키가 큰 사람들 조회
-- (=ANY) == (IN)은 서브쿼리에서 나온 결과와 일치하는 결과만 조회
SELECT * FROM userTbl
	WHERE height = ANY (SELECT height FROM userTbl WHERE addr = '경남'); 

SELECT * FROM userTbl
	WHERE height IN (SELECT height FROM userTbl WHERE addr = '경남');

--ORDERBY 정렬
-- 키로 내림차순 정렬 후 같은 값이 있으면 이름으로 오름차순 정렬
SELECT * FROM userTbl
	ORDER BY height DESC, name ASC; 
	
-- mobile1으로 오름차순 뒤 같은 값이면 mobile2로 내림차순
SELECT * FROM userTbl
	ORDER BY mobile1 ASC, mobile2 DESC;

-- userTb1에 몇개의 데이터(레코드)가 있는지 확인
SELECT COUNT(*) FROM userTbl;
SELECT COUNT(*) FROM buyTbl;

-- DISTINCT (중복제거)
SELECT addr FROM userTbl;
SELECT DISTINCT addr FROM userTbl;

-- TOP
USE AdventureWorksLT2019;
GO

SELECT * FROM SalesLT.Customer;
SELECT TOP(10) * FROM SalesLT.Customer;

SELECT TOP(10) * 
	FROM SalesLT.Customer 
	WHERE Title = 'Ms.'
	ORDER BY CustomerID DESC;

SELECT TOP(1) PERCENT * 
	FROM SalesLT.Customer 
	WHERE Title = 'Ms.'
	ORDER BY CustomerID DESC;

SELECT * FROM SalesLT.Customer
	ORDER BY FirstName
OFFSET 5 ROW --어디다 써?
FETCH NEXT 3 ROWS ONLY; --프로시저/함수