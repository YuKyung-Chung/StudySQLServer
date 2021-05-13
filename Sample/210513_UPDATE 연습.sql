-- UPDATE할 때 WHERE절을 빼먹지 말자!
--트랜잭션 시작
BEGIN TRANSACTION;  --TRAN으로 줄여도 됨

UPDATE TestTbl
SET userName = '성명건'
WHERE ID = 2; --WHERE절 빼면 안됨

UPDATE TestTbl
SET userName = '성명건', addr = '부산'
WHERE ID = 4;

SELECT * FROM TestTbl;

COMMIT;
ROLLBACK;

--데이터 전부를 삭제하고 1부터 다시 시작
DELETE TestTbl;