날짜별, 물품구분별, 판매갯수, 판매가격이 나오도록 

select * from t_orderbasket

-- 테이블 3개필요하다  // 1 날짜별(구분)    2 소계    3 총계
 
1. 우선 날짜별, 구분별  group by 지정하여 준다

SELECT INDATE_VC,GUBUN_VC,COUNT(NAME_VC),SUM(PRICE_NU*QTY_NU)
                 from t_orderbasket
               GROUP BY INDATE_VC, GUBUN_VC
              ORDER BY INDATE_VC

2. 카타시안의 곱을 이용하여 15 * 3,  45 가지 경우의 수 추출. 
    ROWNUM 2는 소계  ROWNUM 3은 총계로 활용하자

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
 
3 각 컬럼값에 들어갈 형식을 지정해 준다.< 그룹별, 소계, 총계 형식 >
    DECODE 활용!! (2일 때는 소계, 3일 때는 총계)

SELECT 
            DECODE(NO,1,IVC,2,'소계','총계'), DECODE(NO,1,GVC,2,GVC|| '계',' '), NVC,PN
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

4. NO가 2일 때, 3일때  즉 소계 총계의 GROUP BY를 지정하여 로우의 수를 조절하자.

SELECT 
            DECODE(NO,1,IVC,2,'소계','총계') AS "판매날짜"
           ,DECODE(NO,1,GVC,2,GVC|| '계',' ') AS "물품구분" 
           ,SUM(NVC)|| '개' AS "판매개수"
           ,SUM(PN)|| '원' AS "판매가격"
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
                          GROUP BY DECODE(NO,1,IVC,2,'소계','총계')
                                              ,DECODE(NO,1,GVC,2,GVC|| '계',' ')

5. 각 데이터들 섞여서 나오므로 ORDER BY 를 적용하여 순서를 지정한다 ( 최종정답 )

SELECT 
            DECODE(NO,1,IVC,2,'소계','총계') AS "판매날짜"
           ,DECODE(NO,1,GVC,2,GVC|| '계',' ') AS "물품구분" 
           ,SUM(NVC)|| '개' AS "판매개수"
           ,SUM(PN)|| '원' AS "판매가격"
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
                          GROUP BY DECODE(NO,1,IVC,2,'소계','총계')
                                              ,DECODE(NO,1,GVC,2,GVC|| '계',' ')
                           ORDER BY  DECODE(NO,1,IVC,2,'소계','총계')