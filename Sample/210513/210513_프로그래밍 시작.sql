-- ���α׷��� ����
DECLARE @varAge INT; -- ���� ����
SET @varAge = 44;    -- ������ �� ����

SELECT @varAge AS '����'; -- ���
---------------------------------------------
USE sqlDB;
GO

DECLARE @myVar1 INT;
DECLARE @myVar2 DECIMAL(5,2); --�����κ� 3, �Ҽ��� 2
DECLARE @myVar3 NCHAR(20);
DECLARE @inchUnit DECIMAL(4,3); --���� 1, �Ҽ��� 3

SET @myVar1 = 4000;
SET @myVar2 = 3.14;
SET @myVar3 = '���� �̸� ==> ';
SET @inchUnit = 0.393;

SELECT @myVar1 AS '����', @myVar2 AS '�Ҽ�';
SELECT @myVar3, name FROM userTbl WHERE height > 180;
SELECT name, height * @inchUnit AS 'Ű(inch)' FROM userTbl;