-- 집합(테이블 합치기)
SELECT StdName, Region FROM StdTbl
UNION -- 두개의 테이블의 값을 하나의 테이블로 합쳐서 사용할 때
SELECT ClubName, ClubRoom FROM ClubTbl
;

SELECT ID, StdID FROM RegInfoTbl
UNION -- 데이터 TYPE이 다르면 조인할 수 없음!!!
SELECT ClubName, ClubRoom FROM ClubTbl
;

SELECT CAST(ID AS VARCHAR), StdID FROM RegInfoTbl
UNION -- 데이터 TYPE 맞추면 UNION 할 수 있음~
SELECT ClubName, ClubRoom FROM ClubTbl
;

SELECT StdName, Region FROM StdTbl
UNION ALL -- 두번씩 나옴(중복 허용)
SELECT STdName, Region FROM StdTbl
;
