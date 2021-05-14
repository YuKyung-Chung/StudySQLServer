-- 3개 테이블 내부조인

SELECT * FROM StdTbl;
SELECT * FROM ClubTbl;

SELECT s.StdID, s.StdName, s.Region
FROM StdTbl AS s
INNER JOIN ClubTbl AS c
ON s.StdID = r.StdID;