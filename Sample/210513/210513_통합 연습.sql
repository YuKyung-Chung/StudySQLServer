--통합
BEGIN TRAN;

SELECT * FROM TestTbl;

-- 데이터 입력
INSERT INTO TestTbl VALUES('최우식', '캐낟');

--데이터 수정
UPDATE TestTbl
   SET userName = '이지은'
	 , addr = '서울'
WHERE ID = 3;

--데이터 삭제
DELETE FROM TestTbl WHERE userName = '홍길순';

COMMIT;
ROLLBACK;

TRUNCATE TABLE TestTbl;
