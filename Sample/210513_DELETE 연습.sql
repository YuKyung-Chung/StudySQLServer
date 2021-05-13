-- DELETE
-- WHERE절은 무조건 써야 한다!!!!!!!!!!!!!!!
BEGIN TRAN;

DELETE FROM TestTbl
 WHERE ID = 4;

DELETE FROM TestTbl
 WHERE addr = '서울';

 SELECT * FROM TestTbl;

 COMMIT;
 ROLLBACK;