--����
BEGIN TRAN;

SELECT * FROM TestTbl;

-- ������ �Է�
INSERT INTO TestTbl VALUES('�ֿ��', 'ĳ��');

--������ ����
UPDATE TestTbl
   SET userName = '������'
	 , addr = '����'
WHERE ID = 3;

--������ ����
DELETE FROM TestTbl WHERE userName = 'ȫ���';

COMMIT;
ROLLBACK;

TRUNCATE TABLE TestTbl;
