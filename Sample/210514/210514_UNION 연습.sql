-- ����(���̺� ��ġ��)
SELECT StdName, Region FROM StdTbl
UNION -- �ΰ��� ���̺��� ���� �ϳ��� ���̺�� ���ļ� ����� ��
SELECT ClubName, ClubRoom FROM ClubTbl
;

SELECT ID, StdID FROM RegInfoTbl
UNION -- ������ TYPE�� �ٸ��� ������ �� ����!!!
SELECT ClubName, ClubRoom FROM ClubTbl
;

SELECT CAST(ID AS VARCHAR), StdID FROM RegInfoTbl
UNION -- ������ TYPE ���߸� UNION �� �� ����~
SELECT ClubName, ClubRoom FROM ClubTbl
;

SELECT StdName, Region FROM StdTbl
UNION ALL -- �ι��� ����(�ߺ� ���)
SELECT STdName, Region FROM StdTbl
;
