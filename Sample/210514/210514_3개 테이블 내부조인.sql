-- 3�� ���̺� ��������

SELECT * FROM StdTbl;
SELECT * FROM ClubTbl;

SELECT s.StdID, s.StdName, s.Region
FROM StdTbl AS s
INNER JOIN RegInfoTbl AS r
ON s.StdID = r.StdID
INNER JOIN ClubTbl AS c
ON c.ClubName = r.ClubName