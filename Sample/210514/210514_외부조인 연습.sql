-- 외부 조인
-- 우리 쇼핑몰에서 물건을 한번도 구매하지 않은 회원들을 조회

SELECT u.userID, u.name, b.prodName
     , u.addr, CONCAT(u.mobile1, u.mobile2) AS mobile
  FROM userTbl AS u
  LEFT OUTER JOIN buyTbl AS b
	ON u.userID = b.userID
 WHERE b.prodName IS NULL
 ORDER BY u.userID;

-- 학생/동아리/가입정보 테이블
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

