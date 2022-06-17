<<<<<<< HEAD
select * from temp

select * from sam_tab02

SELECT CEIL(NO/4) RNO, NO
      ,GUBUN
  FROM (
        SELECT rownum no
              ,gubun
          FROM sam_tab02
       );
       

select ceil(no/4) rno, no, emp_id
 from (
            select rownum no, emp_id
             from temp
         );
         
SELECT CEIL(NO/4) RNO
      ,MOD(NO,4) CNO
      ,NO
      ,GUBUN
  FROM (
        SELECT ROWNUM NO
              ,GUBUN
          FROM sam_tab02
=======
select * from temp

select * from sam_tab02

SELECT CEIL(NO/4) RNO, NO
      ,GUBUN
  FROM (
        SELECT rownum no
              ,gubun
          FROM sam_tab02
       );
       

select ceil(no/4) rno, no, emp_id
 from (
            select rownum no, emp_id
             from temp
         );
         
SELECT CEIL(NO/4) RNO
      ,MOD(NO,4) CNO
      ,NO
      ,GUBUN
  FROM (
        SELECT ROWNUM NO
              ,GUBUN
          FROM sam_tab02
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
       )