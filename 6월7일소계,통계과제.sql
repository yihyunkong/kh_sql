��¥��, ��ǰ���к�, �ǸŰ���, �ǸŰ����� �������� 

select * from t_orderbasket

-- ���̺� 3���ʿ��ϴ�  // 1 ��¥��(����)    2 �Ұ�    3 �Ѱ�
 
1. �켱 ��¥��, ���к�  group by �����Ͽ� �ش�

SELECT INDATE_VC,GUBUN_VC,COUNT(NAME_VC),SUM(PRICE_NU*QTY_NU)
                 from t_orderbasket
               GROUP BY INDATE_VC, GUBUN_VC
              ORDER BY INDATE_VC

2. īŸ�þ��� ���� �̿��Ͽ� 15 * 3,  45 ���� ����� �� ����. 
    ROWNUM 2�� �Ұ�  ROWNUM 3�� �Ѱ�� Ȱ������

SELECT *
                FROM(SELECT INDATE_VC,GUBUN_VC,COUNT(NAME_VC),SUM(PRICE_NU*QTY_NU)
                                    FROM t_orderbasket
                              GROUP BY INDATE_VC, GUBUN_VC
                             ORDER BY INDATE_VC
                            ) A,
                            (
                            SELECT ROWNUM FROM DEPT
                                 WHERE ROWNUM < 4
                             )            
 
3 �� �÷����� �� ������ ������ �ش�.< �׷캰, �Ұ�, �Ѱ� ���� >
    DECODE Ȱ��!! (2�� ���� �Ұ�, 3�� ���� �Ѱ�)

SELECT 
            DECODE(NO,1,IVC,2,'�Ұ�','�Ѱ�'), DECODE(NO,1,GVC,2,GVC|| '��',' '), NVC,PN
                FROM(SELECT INDATE_VC AS "IVC"
                                            ,GUBUN_VC AS "GVC"
                                            ,COUNT(NAME_VC) "NVC"
                                            ,SUM(PRICE_NU*QTY_NU) AS "PN"
                                    FROM t_orderbasket
                              GROUP BY INDATE_VC, GUBUN_VC
                             ORDER BY INDATE_VC
                            ) A,
                            (
                            SELECT ROWNUM NO FROM DEPT
                                 WHERE ROWNUM < 4
                             )          

4. NO�� 2�� ��, 3�϶�  �� �Ұ� �Ѱ��� GROUP BY�� �����Ͽ� �ο��� ���� ��������.

SELECT 
            DECODE(NO,1,IVC,2,'�Ұ�','�Ѱ�') AS "�Ǹų�¥"
           ,DECODE(NO,1,GVC,2,GVC|| '��',' ') AS "��ǰ����" 
           ,SUM(NVC)|| '��' AS "�ǸŰ���"
           ,SUM(PN)|| '��' AS "�ǸŰ���"
                FROM(SELECT INDATE_VC AS "IVC"
                                            ,GUBUN_VC AS "GVC"
                                            ,COUNT(NAME_VC) AS "NVC"
                                            ,SUM(PRICE_NU*QTY_NU) AS "PN"
                                    FROM t_orderbasket
                              GROUP BY INDATE_VC, GUBUN_VC
                             ORDER BY INDATE_VC
                            ) A,
                            (
                            SELECT ROWNUM NO FROM DEPT
                                 WHERE ROWNUM < 4
                             )    
                          GROUP BY DECODE(NO,1,IVC,2,'�Ұ�','�Ѱ�')
                                              ,DECODE(NO,1,GVC,2,GVC|| '��',' ')

5. �� �����͵� ������ �����Ƿ� ORDER BY �� �����Ͽ� ������ �����Ѵ� ( �������� )

SELECT 
            DECODE(NO,1,IVC,2,'�Ұ�','�Ѱ�') AS "�Ǹų�¥"
           ,DECODE(NO,1,GVC,2,GVC|| '��',' ') AS "��ǰ����" 
           ,SUM(NVC)|| '��' AS "�ǸŰ���"
           ,SUM(PN)|| '��' AS "�ǸŰ���"
                FROM(SELECT INDATE_VC AS "IVC"
                                            ,GUBUN_VC AS "GVC"
                                            ,COUNT(NAME_VC) AS "NVC"
                                            ,SUM(PRICE_NU*QTY_NU) AS "PN"
                                    FROM t_orderbasket
                              GROUP BY INDATE_VC, GUBUN_VC
                             ORDER BY INDATE_VC
                            ) A,
                            (
                            SELECT ROWNUM NO FROM DEPT
                                 WHERE ROWNUM < 4
                             )    
                          GROUP BY DECODE(NO,1,IVC,2,'�Ұ�','�Ѱ�')
                                              ,DECODE(NO,1,GVC,2,GVC|| '��',' ')
                           ORDER BY  DECODE(NO,1,IVC,2,'�Ұ�','�Ѱ�')