-- 뒤의 테이블 기준 만족하는 데이터만 추려내는 것

SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
INTERSECT
SELECT name, CONCAT(mobile1, mobile2) AS mobile FROM userTbl
WHERE mobile1 IS NOT NULL