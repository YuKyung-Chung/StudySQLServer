-- UPDATE�� �� WHERE���� ������ ����!
--Ʈ����� ����
BEGIN TRANSACTION;  --TRAN���� �ٿ��� ��

UPDATE TestTbl
SET userName = '�����'
WHERE ID = 2; --WHERE�� ���� �ȵ�

UPDATE TestTbl
SET userName = '�����', addr = '�λ�'
WHERE ID = 4;

SELECT * FROM TestTbl;

COMMIT;
ROLLBACK;

--������ ���θ� �����ϰ� 1���� �ٽ� ����
DELETE TestTbl;