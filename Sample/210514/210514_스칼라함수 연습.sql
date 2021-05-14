-- 문자열 함수
SELECT ASCII('+'), CHAR(47); -- 사용빈도 하
SELECT UNICODE('가'), NCHAR(44032); -- 사용빈도 하

-- 문자열 연결
SELECT CONCAT('SQL', 'server', 2019) AS [name]; -- 사용빈도 상(CONCAT는 둘 이상의 문자열 연결)
SELECT 'SQL' + 'server' + CAST(2019 AS VARCHAR);

-- 문자열 안에서 단어 시작위치
SELECT CHARINDEX('world', 'Hello world!'); -- 시작위치 1부터 시작! cf) C#, java, python은 0부터 시작!

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL server 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR, 4);

SELECT SUBSTRING ('대한민국만세!',5,2); --지정한 위치부터 지정한 개수의 문자를 돌려준다.

SELECT LEN('Hello World!'); -- 문자열의 길이를 돌려준다.

SELECT LOWER('hELLO World!'), UPPER('hELLO World!');
SELECT UPPER('cd2005');

-- 스페이스 제거 함수
SELECT '   SQL    ', LTRIM('     SQL     ');
SELECT '   SQL    ', RTRIM('     SQL     ');
SELECT '   SQL    ', TRIM('     SQL     ');

-- REPLACE 사용빈도 최상
SELECT REPLACE('SQL Server 2019, server 만세', 'server', '서버'); --대소문자 구분 안함!

-- STR 사용빈도 최상: 숫자를 문자로 변환(CAST나 CONVERT를 대신 사용 권장)
SELECT STR(3.141592);
SELECT STR(45);

-- FORMAT 사용빈도 최상: 지정된 형식으로 출력.
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss'); --한국식
SELECT FORMAT(GETDATE(), 'MM-dd-yyyy hh:mm:ss'); --미국식

