1.

alter table scott.member
add (mem_address varchar2(100));

2.



3.

table


4.

-- 날짜 정보를 문자열로 바꾸기
select
         to_char('20/10/13') -- 문자 타입 
        ,to_date('20/10/13') + 1 -- 날짜 타입
        ,to_char(to_date('20/10/13'), 'yyyy-mm-dd')
 from dual
 
 
5.

select 
         to_char(to_date('20/10/13'), 'yyyy년 mm월 dd일')
 from dual 
 
select 
            to_char(to_date('190505'), 'yyyy') || '년'
         || to_char(to_date('190505'), 'mm') || '월'
         || to_char(to_date('190505'), 'dd') || '일'
 from dual
 
select 
         to_char(to_date('190505'), 'yyyy"년" mm"월" dd"일"')   
 from dual
 

6.

select trim(' ABC D     ') -- 사이에 있는 공백은 안빠지네???4
        ,trim(' ABC D     ') || 'AAA'
 from dual
 

7.

select concat(concat(concat(empno, ','), concat(ename, ',')), deptno)
 from emp
 
 
8.
-- when과 then의 내용 위치가 바뀌지 않도록 개념 파악할 것!!!!!
select 
         merit_rating, salary
         case merit_rating
            when 'A' then salary * 0.2
            when 'B' then salary * 0.15
            when 'C' then salary * 0.1
            else 0
         end bonus
 from employee