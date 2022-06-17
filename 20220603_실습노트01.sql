<<<<<<< HEAD
CREATE TABLE SAM_TAB02 (GUBUN VARCHAR2(5) );

PL/SQL - 저장 프로시저 생성 syntax - 익명 프로시저

DECLARE
SU NUMBER;
BEGIN
SU:=106; -- 106부터 시작
LOOP -- 무한루프(조건이 없다.)
SU:=SU+1; -- 1씩 증가
EXIT WHEN SU>125; -- 무한루프 방지코드 exit

INSERT INTO SAM_TAB02
VALUES('F'||TO_CHAR(SU));
END LOOP;
COMMIT;
END;


---------------------------------------------------------------------------


select * from sam_tab02

select rownum no, gubun from sam_tab02


SELECT ceil(no/4) rno,no,gubun
  FROM (
        SELECT rownum no,gubun FROM sam_tab02
       );
       
SELECT ceil(no/4) rno
          ,mod(no,4) cno
          ,no,gubun
  FROM (
             SELECT rownum no,gubun FROM sam_tab02
           );

select mod(no,4) cno
        ,no, gubun
 from (
            select rownum no, gubun from sam_tab02
         );
           
SELECT ceil(no/4) rno
          ,mod(no,4) cno
          ,no,gubun
  FROM (
             SELECT rownum no,gubun FROM sam_tab02
           );
           
           

SELECT ceil(no/5) rno
          ,MAX(decode(mod(no,5),1,emp_id)) c1
          ,MAX(decode(mod(no,5),2,emp_id)) c2
          ,MAX(decode(mod(no,5),3,emp_id)) c3
          ,MAX(decode(mod(no,5),4,emp_id)) c4
          ,MAX(decode(mod(no,5),0,emp_id)) c5

  FROM (
              SELECT rownum no, emp_id from temp
           )
group by ceil(no/5)
order by ceil(no/5)

SELECT ceil(no/5) rno
          ,min(decode(mod(no,5),1,emp_id)) c1
          ,min(decode(mod(no,5),1,emp_name)) name1
          ,min(decode(mod(no,5),2,emp_id)) c2
          ,min(decode(mod(no,5),2,emp_name)) name2
          ,min(decode(mod(no,5),3,emp_id)) c3
          ,min(decode(mod(no,5),3,emp_name)) name3
          ,min(decode(mod(no,5),4,emp_id)) c4
          ,min(decode(mod(no,5),4,emp_name)) name4
          ,min(decode(mod(no,5),0,emp_id)) c5
          ,min(decode(mod(no,5),0,emp_name)) name5

  FROM (
              SELECT rownum no, emp_id, emp_name from temp
           )
group by ceil(no/5)
order by ceil(no/5)

-- 인라인뷰를 이용하면 테이블에 포함된 컬럼이 아니더라도 접근이 가능하다.

select 
         rno
 from (
            select ceil(no/4) rno
             from (
                        select rownum no, gubun from sam_tab02
                     )      
         )
group by rno

=======
CREATE TABLE SAM_TAB02 (GUBUN VARCHAR2(5) );

PL/SQL - 저장 프로시저 생성 syntax - 익명 프로시저

DECLARE
SU NUMBER;
BEGIN
SU:=106; -- 106부터 시작
LOOP -- 무한루프(조건이 없다.)
SU:=SU+1; -- 1씩 증가
EXIT WHEN SU>125; -- 무한루프 방지코드 exit

INSERT INTO SAM_TAB02
VALUES('F'||TO_CHAR(SU));
END LOOP;
COMMIT;
END;


---------------------------------------------------------------------------


select * from sam_tab02

select rownum no, gubun from sam_tab02


SELECT ceil(no/4) rno,no,gubun
  FROM (
        SELECT rownum no,gubun FROM sam_tab02
       );
       
SELECT ceil(no/4) rno
          ,mod(no,4) cno
          ,no,gubun
  FROM (
             SELECT rownum no,gubun FROM sam_tab02
           );

select mod(no,4) cno
        ,no, gubun
 from (
            select rownum no, gubun from sam_tab02
         );
           
SELECT ceil(no/4) rno
          ,mod(no,4) cno
          ,no,gubun
  FROM (
             SELECT rownum no,gubun FROM sam_tab02
           );
           
           

SELECT ceil(no/5) rno
          ,MAX(decode(mod(no,5),1,emp_id)) c1
          ,MAX(decode(mod(no,5),2,emp_id)) c2
          ,MAX(decode(mod(no,5),3,emp_id)) c3
          ,MAX(decode(mod(no,5),4,emp_id)) c4
          ,MAX(decode(mod(no,5),0,emp_id)) c5

  FROM (
              SELECT rownum no, emp_id from temp
           )
group by ceil(no/5)
order by ceil(no/5)

SELECT ceil(no/5) rno
          ,min(decode(mod(no,5),1,emp_id)) c1
          ,min(decode(mod(no,5),1,emp_name)) name1
          ,min(decode(mod(no,5),2,emp_id)) c2
          ,min(decode(mod(no,5),2,emp_name)) name2
          ,min(decode(mod(no,5),3,emp_id)) c3
          ,min(decode(mod(no,5),3,emp_name)) name3
          ,min(decode(mod(no,5),4,emp_id)) c4
          ,min(decode(mod(no,5),4,emp_name)) name4
          ,min(decode(mod(no,5),0,emp_id)) c5
          ,min(decode(mod(no,5),0,emp_name)) name5

  FROM (
              SELECT rownum no, emp_id, emp_name from temp
           )
group by ceil(no/5)
order by ceil(no/5)

-- 인라인뷰를 이용하면 테이블에 포함된 컬럼이 아니더라도 접근이 가능하다.

select 
         rno
 from (
            select ceil(no/4) rno
             from (
                        select rownum no, gubun from sam_tab02
                     )      
         )
group by rno

>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
