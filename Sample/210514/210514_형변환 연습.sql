-- 시스템함수 (SQL 서버가 기본으로 제공해주는 함수들)
-- 형 변환
SELECT CAST(AVG(CAST(amount AS float)) AS DECIMAL(5,4)) FROM buyTbl;
SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT);     -- 예외발생하면 쿼리가 비정상 종료
SELECT TRY_PARSE('3.14' AS INT); -- 값 변환 못하면 NULL 값대체 정상적 수행

-- HEIGHT SMALLINT => VARCHAR, CHAR 형 변환
SELECT name, CAST(height AS varchar) FROM userTbl
 WHERE height IS NULL; -- NULL값은 =로 비교X //IS(같다) /IS NOT(같지 않다)

SELECT PARSE ('2021년 5월 14일 10시 27분' AS DATETIME);

SELECT @@VERSION;

-- 날짜 및 시간함수
SELECT YEAR(GETDATE()) AS '현재년도';
SELECT MONTH(GETDATE()) AS '현재월';
SELECT DAY(GETDATE()) AS '현재날짜';

-- 수치함수
SELECT ABS(-100);
SELECT ROUND(3.141592,3);
SELECT FLOOR(RAND() * 100);

-- 논리함수
SELECT IIF(100 > 200, '맞다', '틀리다');

