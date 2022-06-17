<<<<<<< HEAD
select job, sal from emp

select dname from dept

select *
 from emp, dept

-- job별 sal의 총합 구하기 
select job, sum(sal)
 from emp, dept
group by job

--------------------------------------------------

select * from dept -- dept 테이블의 deptno와

select * from emp -- emp 테이블의 deptno가 겹치기 때문에 

select dept.dname -- dept 테이블의 dname 컬럼을 select
 from emp, dept -- emp와 dept 테이블에서 
where emp.deptno = dept.deptno -- emp 테이블의 deptno와 dept 테이블의 deptno가 같은 컬럼일 때

select dept.dname
 from emp, dept
where emp.deptno = dept.deptno
group by dept.dname
union all
select '총계' from dual

select dept.dname
        ,sum(decode(job, 'CLERK', sal)) clerk
 from emp, dept
where emp.deptno = dept.deptno
group by dept.dname

select deptno
        ,sum(decode(job, 'CLERK', sal)) clerk
        ,sum(decode(job, 'MANAGER', sal)) manager
        ,sum(decode(job, 'CLERK', null, 'MANAGER', null, sal)) etc
        ,sum(sal)
 from emp
group by deptno


select dept.dname
        ,sum(decode(job, 'CLERK', sal)) clerk
        ,sum(decode(job, 'MANAGER', sal)) manager
        ,sum(decode(job, 'CLERK', null, 'MANAGER', null, sal)) etc
        ,sum(sal) dept_sal
 from emp, dept
where emp.deptno = dept.deptno
group by dept.dname


select 
         decode(b.rno, '1', a.dname, '총계')
         ,sum(clerk) clerk
         ,sum(manager) manager
         ,sum(etc) etc
         ,sum(dept_sal) dept_sal
 from (
          select dept.dname
                  ,sum(decode(job, 'CLERK', sal)) clerk
                  ,sum(decode(job, 'MANAGER', sal)) manager
                  ,sum(decode(job, 'CLERK', null, 'MANAGER', null, sal)) etc
                  ,sum(sal) dept_sal
           from emp, dept
         where emp.deptno = dept.deptno
         group by dept.dname
         ) a,
         (
          select rownum rno from dept
          where rownum < 3
         ) b
group by decode(b.rno, '1', a.dname, '총계')
order by decode(b.rno, '1', a.dname, '총계')

-----------------------------------------------------------------------------

sum(qty_nu * price_nu) as "상품 매출액"

select decode(b.rno, 1, indate_vc, 2, '총계') as "판매날짜"
        ,sum(qty_nu) || '개'  as "판매개수"
        ,sum(qty_nu * price_nu) || '원' as "판매가격"
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        ) b
group by decode(b.rno, 1, indate_vc, 2, '총계')
=======
select job, sal from emp

select dname from dept

select *
 from emp, dept

-- job별 sal의 총합 구하기 
select job, sum(sal)
 from emp, dept
group by job

--------------------------------------------------

select * from dept -- dept 테이블의 deptno와

select * from emp -- emp 테이블의 deptno가 겹치기 때문에 

select dept.dname -- dept 테이블의 dname 컬럼을 select
 from emp, dept -- emp와 dept 테이블에서 
where emp.deptno = dept.deptno -- emp 테이블의 deptno와 dept 테이블의 deptno가 같은 컬럼일 때

select dept.dname
 from emp, dept
where emp.deptno = dept.deptno
group by dept.dname
union all
select '총계' from dual

select dept.dname
        ,sum(decode(job, 'CLERK', sal)) clerk
 from emp, dept
where emp.deptno = dept.deptno
group by dept.dname

select deptno
        ,sum(decode(job, 'CLERK', sal)) clerk
        ,sum(decode(job, 'MANAGER', sal)) manager
        ,sum(decode(job, 'CLERK', null, 'MANAGER', null, sal)) etc
        ,sum(sal)
 from emp
group by deptno


select dept.dname
        ,sum(decode(job, 'CLERK', sal)) clerk
        ,sum(decode(job, 'MANAGER', sal)) manager
        ,sum(decode(job, 'CLERK', null, 'MANAGER', null, sal)) etc
        ,sum(sal) dept_sal
 from emp, dept
where emp.deptno = dept.deptno
group by dept.dname


select 
         decode(b.rno, '1', a.dname, '총계')
         ,sum(clerk) clerk
         ,sum(manager) manager
         ,sum(etc) etc
         ,sum(dept_sal) dept_sal
 from (
          select dept.dname
                  ,sum(decode(job, 'CLERK', sal)) clerk
                  ,sum(decode(job, 'MANAGER', sal)) manager
                  ,sum(decode(job, 'CLERK', null, 'MANAGER', null, sal)) etc
                  ,sum(sal) dept_sal
           from emp, dept
         where emp.deptno = dept.deptno
         group by dept.dname
         ) a,
         (
          select rownum rno from dept
          where rownum < 3
         ) b
group by decode(b.rno, '1', a.dname, '총계')
order by decode(b.rno, '1', a.dname, '총계')

-----------------------------------------------------------------------------

sum(qty_nu * price_nu) as "상품 매출액"

select decode(b.rno, 1, indate_vc, 2, '총계') as "판매날짜"
        ,sum(qty_nu) || '개'  as "판매개수"
        ,sum(qty_nu * price_nu) || '원' as "판매가격"
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        ) b
group by decode(b.rno, 1, indate_vc, 2, '총계')
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
order by "판매날짜"