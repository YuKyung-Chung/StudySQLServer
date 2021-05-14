-- GROUP BY
-- ���̵� ���� ���� � ����� ��ȸ
SELECT userID, SUM(amount) AS '�ѱ��Ű���'
 FROM buyTbl
 GROUP BY userID; --�ߺ��� ���� ���ŵ�

 -- �츮 ���θ����� ���� �� ���� �� ����� ���̵� ���� ��ȸ�ϰ� �� �ݾ��� ���� ����϶�
 SELECT userID, SUM(amount * price) AS '�ѱ��űݾ�'
  FROM buyTbl
  GROUP BY userID
  ORDER BY SUM(amount * price) DESC;

 SELECT userID, SUM(amount * price) AS '�ѱ��űݾ�'
  FROM buyTbl;

-- ��� ���űݾ�
SELECT AVG(price) AS [��ձ��űݾ�] FROM buyTbl;

-- ����� ���̺��� Ű�� ���� ū ��� ��ȸ
SELECT * FROM userTbl
 ORDER BY height ASC;

-- ����� ���̺��� Ű�� ���� ���� ��� ��ȸ
SELECT * FROM userTbl
 ORDER BY height DESC;

-- Ű�� ���� ū ����� ���� ���� ��� ��ȸ
SELECT name AS '�̸�', height AS 'Ű' FROM userTbl
 WHERE height = (SELECT MAX(height) FROM userTbl)
 OR height = (SELECT MIN(height) FROM userTbl);

-- GROUP BY / HAVING
SELECT userID AS '����ھ��̵�' 
     , SUM(price * amount) AS [�ѱ��űݾ�]
  FROM buyTbl
 -- WHERE SUM(price * amount) >= 1000 //����Ұ�
 GROUP BY userID
 HAVING SUM(price * amount) >= 1000;

-- ���
-- ��ǰ �׷캰�� ����ڰ� �󸶸�ŭ �����ߴ��� ��ȸ
SELECT userID
     , groupName
     , SUM(price * amount) AS [�ѱ��űݾ�]
  FROM buyTbl
 GROUP BY userID, groupName;

-- ROLLUP ������ ���� ����� �ٸ�
SELECT userID
     , groupName
     , SUM(price * amount) AS [�ѱ��űݾ�]
  FROM buyTbl
 GROUP BY ROLLUP(groupName, userID);

SELECT userID
     , groupName
     , SUM(price * amount) AS [�ѱ��űݾ�]
  FROM buyTbl
 GROUP BY ROLLUP(userID, groupName);

SELECT userID
     , groupName
     , SUM(price * amount) AS [�ѱ��űݾ�]
  FROM buyTbl
 GROUP BY CUBE(userID, groupName);

SELECT groupName
     , SUM(price * amount) AS [�ѱ��űݾ�]
	 , GROUPING_ID(groupName) AS 'SUM'
  FROM buyTbl
 GROUP BY ROLLUP(groupName);