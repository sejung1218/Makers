SELECT * FROM MEMBER;
SELECT * FROM FREEBOARD;
DROP TABLE FREEBOARD;
DROP TABLE FBCOMMENT;

------------------------------------------------------------ FBCOMMENT
SELECT * FROM FBCOMMENT;

------------------------------------------------------------ ��۾���
INSERT INTO FBCOMMENT (FBCNUM, MID, FBNUM, FBCGROUP, FBCSTEP, FBCDATE, FBCCONTENT) 
        VALUES (FBCOMMENT_SEQ.NEXTVAL, 'dltpwjd1218@naver.com', 140, FBCOMMENT_SEQ.CURRVAL, 0, SYSDATE, '����¡�׽�Ʈ');
        
------------------------------------------------------------ �� ��ۿ� ���� �亯���
INSERT INTO FBCOMMENT (FBCNUM, MID, FBNUM, FBCGROUP, FBCSTEP, FBCDATE, FBCCONTENT) 
        VALUES (FBCOMMENT_SEQ.NEXTVAL, 'dltpwjd1218@naver.com', 140, FBCOMMENT_SEQ.CURRVAL, 1, SYSDATE, '���1�� �亯4');
        
INSERT INTO FBCOMMENT (FBCNUM, MID, FBNUM, FBCGROUP, FBCSTEP, FBCDATE, FBCCONTENT) 
        VALUES (FBCOMMENT_SEQ.NEXTVAL, 'dltpwjd1218@naver.com', 140, FBCOMMENT_SEQ.CURRVAL, 2, SYSDATE, '���1�� �亯');

------------------------------------------------------------ �� �ۿ� ���� �ι�° �亯��� (����� ��۱�����)
------------------------------ STEP A
UPDATE FBCOMMENT SET FBCSTEP = FBCSTEP+1 WHERE FBCGROUP = 24 AND FBCSTEP > 0;
------------------------------ �ι�° �亯���
INSERT INTO FBCOMMENT (FBCNUM, MID, FBNUM, FBCGROUP, FBCSTEP, FBCDATE, FBCCONTENT) 
        VALUES (FBCOMMENT_SEQ.NEXTVAL, 'dltpwjd1218@naver.com', 140, FBCOMMENT_SEQ.CURRVAL, 1, SYSDATE, '���1�� �亯�� �亯');

------------------------------------------------------------ ��۸��
SELECT * FROM ( SELECT ROWNUM RN, FBC.* FROM ( SELECT * FROM FBCOMMENT ORDER BY FBCGROUP, FBCSTEP) FBC ) WHERE RN BETWEEN 1 AND 4;

SELECT * FROM ( SELECT ROWNUM RN, FBC.* FROM ( SELECT * FROM FBCOMMENT WHERE FBNUM = 140 ORDER BY FBCGROUP, FBCSTEP) FBC )
                WHERE RN BETWEEN 1 AND 10;

SELECT * FROM FBCOMMENT WHERE FBNUM = 46  ORDER BY FBCGROUP, FBCSTEP;

------------------------------------------------------------ ��� ����
SELECT COUNT(*) FROM FBCOMMENT WHERE FBNUM='46';

------------------------------------------------------------ ��� �����ϱ� (����)
UPDATE FBCOMMENT SET FBCCONTENT = '46������ ���' WHERE FBNUM = 2;
UPDATE FBCOMMENT SET FBNUM = '46' WHERE FBNUM = 2;

------------------------------------------------------------ ��� �����ϱ�
DELETE FROM FBCOMMENT WHERE FBNUM='120';


COMMIT;