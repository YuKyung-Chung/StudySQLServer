-- �ܺ� ����
-- �츮 ���θ����� ������ �ѹ��� �������� ���� ȸ������ ��ȸ

SELECT u.userID, u.name, b.prodName
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
	ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID;

-- �л�/���Ƹ�/�������� ���̺�
--INNER JOIN
SELECT s.StdID, s.StdName, s.Region
     , r.ClubName, r.RegDate
	 , c.ClubName
  FROM StdTbl AS s
 INNER JOIN RegInfoTbl AS r
    ON s.StdID = r.StdID
 INNER JOIN ClubTbl AS c
    ON c.ClubName = r.ClubName

--OUTERJOIN
SELECT s.StdID, s.StdName, s.Region
     , r.ClubName, r.RegDate
	 , c.ClubName
  FROM StdTbl AS s
 LEFT OUTER JOIN RegInfoTbl AS r
    ON s.StdID = r.StdID
 LEFT OUTER JOIN ClubTbl AS c
    ON c.ClubName = r.ClubName

SELECT c.ClubName, c.ClubRoom, r.ID, r.RegDate
  FROM ClubTbl AS c
  LEFT OUTER JOIN RegInfoTbl AS r
    ON c.ClubName = r.ClubName

