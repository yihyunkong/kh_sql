<<<<<<< HEAD
-- 2001년 9월 1일 부터 2001년 9월 11일 까지의 환율 금액을 가지고 있다. 환율 금액은 CDATE에 저장되어있다.
-- 하루 이전 날짜의 값으로 입력을 하자. 

-- 우리 회사의 김대표는 2001년 9월 3일에 한화로 얼마를 준비해야 결제가 가능할까?

select 
         rownum rno, cdate, amt
 from test02
 
select
         rownum cno, cdate, crate
 from test02
 
 
select 
         *
 from (
            select 
                     rownum rno, cdate, amt
             from test02
         ) a,
         (
            select
                     rownum cno, cdate, crate
             from test02
         ) b
where a.rno - 1 = b.cno

select 
         a.cdate, a.amt, a.amt*b.crate
 from (
            select 
                     rownum rno, cdate, amt
             from test02
         ) a,
         (
            select
                     rownum cno, cdate, crate
             from test02
         ) b
where a.rno - 1 = b.cno



select 
         a.cdate, a.amt, to_char(a.amt*b.crate '999,999,999,999') || '원' as "한화금액"
 from (
            select 
                     rownum rno, cdate, amt
             from test02
         ) a,
         (
            select
                     rownum cno, cdate, crate
             from test02
         ) b
=======
-- 2001년 9월 1일 부터 2001년 9월 11일 까지의 환율 금액을 가지고 있다. 환율 금액은 CDATE에 저장되어있다.
-- 하루 이전 날짜의 값으로 입력을 하자. 

-- 우리 회사의 김대표는 2001년 9월 3일에 한화로 얼마를 준비해야 결제가 가능할까?

select 
         rownum rno, cdate, amt
 from test02
 
select
         rownum cno, cdate, crate
 from test02
 
 
select 
         *
 from (
            select 
                     rownum rno, cdate, amt
             from test02
         ) a,
         (
            select
                     rownum cno, cdate, crate
             from test02
         ) b
where a.rno - 1 = b.cno

select 
         a.cdate, a.amt, a.amt*b.crate
 from (
            select 
                     rownum rno, cdate, amt
             from test02
         ) a,
         (
            select
                     rownum cno, cdate, crate
             from test02
         ) b
where a.rno - 1 = b.cno



select 
         a.cdate, a.amt, to_char(a.amt*b.crate '999,999,999,999') || '원' as "한화금액"
 from (
            select 
                     rownum rno, cdate, amt
             from test02
         ) a,
         (
            select
                     rownum cno, cdate, crate
             from test02
         ) b
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
where a.rno - 1 = b.cno