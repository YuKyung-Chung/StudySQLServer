-- DELETE
-- WHERE���� ������ ��� �Ѵ�!!!!!!!!!!!!!!!
BEGIN TRAN;

DELETE FROM TestTbl
 WHERE ID = 4;

DELETE FROM TestTbl
 WHERE addr = '����';

 SELECT * FROM TestTbl;

 COMMIT;
 ROLLBACK;