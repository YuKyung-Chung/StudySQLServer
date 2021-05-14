SELECT * FROM buyTbl;
SELECT * FROM userTbl;

-- JOIN: INNER JOIN(내부 조인)
SELECT u.userID
     , u.name
	 , u.addr
	 , CONCAT(u.mobile1, u.mobile2) AS mobile -- 문자열 연결
	 , b.num
	 , b.prodName
	 , b.price
	 , b.amount
  FROM userTbl AS u --기본키
 INNER JOIN buyTbl AS b
    ON u.userID = b.userID
 WHERE b.userID = 'JYP';

