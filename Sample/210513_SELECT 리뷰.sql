-- ������ ��ȸ
SELECT * FROM userTbl;

-- ������ ��ȸ ���͸�
SELECT * FROM userTbl
	WHERE userID = 'BBK';

SELECT * FROM userTbl
	WHERE name LIKE '%��%';

SELECT userID, name, addr FROM userTbl
	WHERE name LIKE '%��%';

-- Ư�� ���̺� ���ڵ�(������) ����Ȯ��
SELECT COUNT(*) FROM userTbl;

--Ű�� 180�̻��̰� ����⵵�� 1970���Ŀ� �¾ ��� ��ȸ
SELECT * FROM userTbl
	WHERE height >= 180 AND birthYear >= 1970;

--Ű�� 180�̻��̰� ����⵵�� 1970���Ŀ� �¾ ����� �̸�, �ּ� ��ȸ
SELECT name, addr FROM userTbl
	WHERE height >= 180 AND birthYear >= 1970;

-- ����⵵ ������ �������� ����(ORDER BY) ��ȸ
SELECT * FROM userTbl
	ORDER BY birthYear ASC;

-- SELECT INTO
-- userTbl_New ���̺��� ���� (PK Ű������ �̻���)
SELECT * INTO userTbl_New FROM userTbl;
SELECT * FROM userTbl_New;

SELECT userID, name, addr INTO userTbl_Backup FROM userTbl;
