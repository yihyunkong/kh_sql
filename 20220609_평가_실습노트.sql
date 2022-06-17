<<<<<<< HEAD
SELECT DEPTno, SUM(SALARY) 합계, FLOOR(AVG(SALARY)) 평균, COUNT(*) 인원수
FROM EMP
WHERE SALARY > 2800000
GROUP BY DEPTno
ORDER BY DEPTno ASC;

select deptno from emp

select * from emp


select deptno, sum(sal) 합계, floor(avg(sal)) 평균, count(*) 인원수
from emp
group by deptno
having floor(avg(sal)) > 2800000
order by deptno asc


SELECT ROWNUM, EMPNAME, SAL
FROM EMP
WHERE ROWNUM <= 3
ORDER BY SAL DESC;

select * from emp

select rownum, ename, sal 
from emp -- emp 테이블에서
where rownum <= 3 -- 3, 2, 1
order by sal desc -- sal을 내림차순으로
-- >> 즉 rownum으로 3, 2, 1 번째 숫자를 출력하고 sal기준으로 내림차순 정렬한 것 

select  rownum, ename, sal
 from ( -- 어디에서 가져와?
          select * -- 모두 가져오는데
           from emp -- emp 테이블에서 
          order by sal desc -- sal기준으로 내림차순 정렬한다 
        ) 
 where rownum <= 3;
 
  select * -- 모두 가져오는데
           from emp -- emp 테이블에서 
          order by sal desc 
   

4.       
          
select sysdate, sysdate - 1, sysdate + 1, sysdate + 2
        ,to_char(sysdate, 'YYYY-MM-DD AM')
        ,to_char(450000, '999,999')
        ,to_date('2022-05-05') + 1
 from dual
 
select to_char(to_date('20/10/13', 'rr/mm/dd'), 'yyyy-mm-dd')
 from dual
 
5.

select to_char(to_date('190505')
        ,'yyyy'"년" 'mm'"월" 'dd'"일")
 from dual
 
 SELECT TO_CHAR(to_date('190505'), 'YYYY"년"MM"월"DD"일"' )  FROM DUAL
 
 select to_char(to_date('190505'), 'yyyy"년" mm"월" dd"일"')
  from dual
  
  
SELECT ITEM_NO, TRIM(ITEM_NAME), ITEM_DESC
 FROM ITEM_WAREHOUSE;
 
 
 
SELECT EMP_ID || ', ' || EMP_NAME || ', ' || EMP_DEPT
FROM emp;

select * from emp

select empno || ', ' || ename || ', ' || deptno
 from emp
 
select concat(concat(concat(concat(empno, ','), ename), ','), deptno)
 from emp
 
 SELECT
    CONCAT(CONCAT(CONCAT(CONCAT(EMP_ID,','),EMP_NAME),','),EMP_DEPT)
FROM EMPUSER_TABLE;


select merit_rating
        ,salary
        ,decode(
                    merit_rating, 'A' , salary * 0.2
                                     , 'B' , salary * 0.15
                                     , 'C' , salary * 0.1, 0
                   ) bonus
 from employee
 
case merit_rating
    when salary * 0.2 then 'A'
    when salary * 0.15 then 'B'
    when salary * 0.1 then 'C'  
else 0
end bonus

=======
SELECT DEPTno, SUM(SALARY) 합계, FLOOR(AVG(SALARY)) 평균, COUNT(*) 인원수
FROM EMP
WHERE SALARY > 2800000
GROUP BY DEPTno
ORDER BY DEPTno ASC;

select deptno from emp

select * from emp


select deptno, sum(sal) 합계, floor(avg(sal)) 평균, count(*) 인원수
from emp
group by deptno
having floor(avg(sal)) > 2800000
order by deptno asc


SELECT ROWNUM, EMPNAME, SAL
FROM EMP
WHERE ROWNUM <= 3
ORDER BY SAL DESC;

select * from emp

select rownum, ename, sal 
from emp -- emp 테이블에서
where rownum <= 3 -- 3, 2, 1
order by sal desc -- sal을 내림차순으로
-- >> 즉 rownum으로 3, 2, 1 번째 숫자를 출력하고 sal기준으로 내림차순 정렬한 것 

select  rownum, ename, sal
 from ( -- 어디에서 가져와?
          select * -- 모두 가져오는데
           from emp -- emp 테이블에서 
          order by sal desc -- sal기준으로 내림차순 정렬한다 
        ) 
 where rownum <= 3;
 
  select * -- 모두 가져오는데
           from emp -- emp 테이블에서 
          order by sal desc 
   

4.       
          
select sysdate, sysdate - 1, sysdate + 1, sysdate + 2
        ,to_char(sysdate, 'YYYY-MM-DD AM')
        ,to_char(450000, '999,999')
        ,to_date('2022-05-05') + 1
 from dual
 
select to_char(to_date('20/10/13', 'rr/mm/dd'), 'yyyy-mm-dd')
 from dual
 
5.

select to_char(to_date('190505')
        ,'yyyy'"년" 'mm'"월" 'dd'"일")
 from dual
 
 SELECT TO_CHAR(to_date('190505'), 'YYYY"년"MM"월"DD"일"' )  FROM DUAL
 
 select to_char(to_date('190505'), 'yyyy"년" mm"월" dd"일"')
  from dual
  
  
SELECT ITEM_NO, TRIM(ITEM_NAME), ITEM_DESC
 FROM ITEM_WAREHOUSE;
 
 
 
SELECT EMP_ID || ', ' || EMP_NAME || ', ' || EMP_DEPT
FROM emp;

select * from emp

select empno || ', ' || ename || ', ' || deptno
 from emp
 
select concat(concat(concat(concat(empno, ','), ename), ','), deptno)
 from emp
 
 SELECT
    CONCAT(CONCAT(CONCAT(CONCAT(EMP_ID,','),EMP_NAME),','),EMP_DEPT)
FROM EMPUSER_TABLE;


select merit_rating
        ,salary
        ,decode(
                    merit_rating, 'A' , salary * 0.2
                                     , 'B' , salary * 0.15
                                     , 'C' , salary * 0.1, 0
                   ) bonus
 from employee
 
case merit_rating
    when salary * 0.2 then 'A'
    when salary * 0.15 then 'B'
    when salary * 0.1 then 'C'  
else 0
end bonus

>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
