-- ���ڿ� �Լ�
SELECT ASCII('+'), CHAR(47); -- ���� ��
SELECT UNICODE('��'), NCHAR(44032); -- ���� ��

-- ���ڿ� ����
SELECT CONCAT('SQL', 'server', 2019) AS [name]; -- ���� ��(CONCAT�� �� �̻��� ���ڿ� ����)
SELECT 'SQL' + 'server' + CAST(2019 AS VARCHAR);

-- ���ڿ� �ȿ��� �ܾ� ������ġ
SELECT CHARINDEX('world', 'Hello world!'); -- ������ġ 1���� ����! cf) C#, java, python�� 0���� ����!

-- LEFT, RIGHT, SUBSTRING, LEN, LOWER, UPPER, LTRIM, RTRIM
DECLARE @STR VARCHAR(20);
SET @STR = 'SQL server 2019';
SELECT LEFT(@STR, 3), RIGHT(@STR, 4);

SELECT SUBSTRING ('���ѹα�����!',5,2); --������ ��ġ���� ������ ������ ���ڸ� �����ش�.

SELECT LEN('Hello World!'); -- ���ڿ��� ���̸� �����ش�.

SELECT LOWER('hELLO World!'), UPPER('hELLO World!');
SELECT UPPER('cd2005');

-- �����̽� ���� �Լ�
SELECT '   SQL    ', LTRIM('     SQL     ');
SELECT '   SQL    ', RTRIM('     SQL     ');
SELECT '   SQL    ', TRIM('     SQL     ');

-- REPLACE ���� �ֻ�
SELECT REPLACE('SQL Server 2019, server ����', 'server', '����'); --��ҹ��� ���� ����!

-- STR ���� �ֻ�: ���ڸ� ���ڷ� ��ȯ(CAST�� CONVERT�� ��� ��� ����)
SELECT STR(3.141592);
SELECT STR(45);

-- FORMAT ���� �ֻ�: ������ �������� ���.
SELECT GETDATE();
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd hh:mm:ss'); --�ѱ���
SELECT FORMAT(GETDATE(), 'MM-dd-yyyy hh:mm:ss'); --�̱���

