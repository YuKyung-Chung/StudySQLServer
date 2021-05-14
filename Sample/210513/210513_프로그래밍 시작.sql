-- 프로그래밍 시작
DECLARE @varAge INT; -- 변수 선언
SET @varAge = 44;    -- 변수에 값 대입

SELECT @varAge AS '나이'; -- 출력
---------------------------------------------
USE sqlDB;
GO

DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5,2); --정수부분 3, 소수점 2
DECLARE @myVar3 NCHAR(20);
DECLARE @inchUnit DECIMAL(4,3); --정수 1, 소수점 3

SET @myVar1 = 4000;
SET @myVar2 = 3.14;
SET @myVar3 = '가수 이름 ==> ';
SET @inchUnit = 0.393;

SELECT @myVar1 AS '정수', @myVar2 AS '소수';
SELECT @myVar3, name FROM userTbl WHERE height > 180;
SELECT name, height * @inchUnit AS '키(inch)' FROM userTbl;