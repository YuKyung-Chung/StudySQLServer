-- 데이터 입력
INSERT INTO TestTbl VALUES('홍길동', '서울');
INSERT INTO TestTbl(userName, addr) VALUES('설현', '서울');
INSERT INTO TestTbl(userName) VALUES('아이유');
INSERT INTO TestTbl(addr, userName) VALUES('세종','김형욱');

SELECT * FROM TestTbl;


INSERT INTO userTbl (userID, name, birthYear, addr)
VALUES ('IU', '아이유', 1993,'서울');
SELECT * FROM userTbl WHERE userID = 'IU';

INSERT INTO userTbl (userID, name, birthYear, addr, height)
VALUES('JJH', '주지훈', 1982, '신안',187);
SELECT * FROM userTbl;
