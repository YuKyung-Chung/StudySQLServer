-- �ý����Լ� (SQL ������ �⺻���� �������ִ� �Լ���)
-- �� ��ȯ
SELECT CAST(AVG(CAST(amount AS float)) AS DECIMAL(5,4)) FROM buyTbl;
SELECT AVG(CONVERT(FLOAT, amount)) FROM buyTbl;

SELECT PARSE('3.14' AS INT);     -- ���ܹ߻��ϸ� ������ ������ ����
SELECT TRY_PARSE('3.14' AS INT); -- �� ��ȯ ���ϸ� NULL ����ü ������ ����

-- HEIGHT SMALLINT => VARCHAR, CHAR �� ��ȯ
SELECT name, CAST(height AS varchar) FROM userTbl
 WHERE height IS NULL; -- NULL���� =�� ��X //IS(����) /IS NOT(���� �ʴ�)

SELECT PARSE ('2021�� 5�� 14�� 10�� 27��' AS DATETIME);

SELECT @@VERSION;

-- ��¥ �� �ð��Լ�
SELECT YEAR(GETDATE()) AS '����⵵';
SELECT MONTH(GETDATE()) AS '�����';
SELECT DAY(GETDATE()) AS '���糯¥';

-- ��ġ�Լ�
SELECT ABS(-100);
SELECT ROUND(3.141592,3);
SELECT FLOOR(RAND() * 100);

-- ���Լ�
SELECT IIF(100 > 200, '�´�', 'Ʋ����');

