-- ������ �Է�
INSERT INTO TestTbl VALUES('ȫ�浿', '����');
INSERT INTO TestTbl(userName, addr) VALUES('����', '����');
INSERT INTO TestTbl(userName) VALUES('������');
INSERT INTO TestTbl(addr, userName) VALUES('����','������');

SELECT * FROM TestTbl;


INSERT INTO userTbl (userID, name, birthYear, addr)
VALUES ('IU', '������', 1993,'����');
SELECT * FROM userTbl WHERE userID = 'IU';

INSERT INTO userTbl (userID, name, birthYear, addr, height)
VALUES('JJH', '������', 1982, '�ž�',187);
SELECT * FROM userTbl;
