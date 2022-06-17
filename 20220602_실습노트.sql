<<<<<<< HEAD
서브쿼리 
where(and, or, exist, any, ...)절 아래 select(조건절)
조건절에 사용된 select문에 컬럼을 주쿼리에서 사용할 수 없다.
직접 조건이 아니라 간접 조건을 주었을 때


인라인뷰
from절 아래 select(집합)
집합에 사용된 select문에 컬럼명을 주쿼리에서 사용할 수 있다.
from절 아래 집합이 2개 이상 오는 경우, 경우의 수를 줄이는 목적으로 사용할 수 있다. - 일의 양을 줄일 수 있다.


서브쿼리와 인라인뷰의 공통점 - select문



이름 - t_gifmem
보유포인트 - t_giftmem, point_nu
영화티켓 - t_giftpoint, point_nu

                 성명                     /               보유포인트              /                 적용포인트                    /             잔여포인트
                회원                                          회원                                          상품                             회원.포인트 - 상품.포인트
                
                
create view v_emp1(e_ne, e_name)
as select empno, ename
     from emp
    where deptno = 10

select e_no, e_name from emp

select
         point_nu
 from (
            select point_nu from t_giftpoit
            where name_vc = '영화티켓'
         )
         
select
         mem.name_vc, mem.point_nu, point.point_nu
 from t_giftmem mem,
        (select point_nu from t_giftpoint
         where name_vc = '영화티켓'
        )point
where mem.point_nu >= point.point_nu

--우리회사에 근무하는 사원중에서 알렌보다 급여를 많이 받는 사원의 이름과 급여를 출력하는 sql문을 작성하시오

select * from emp

select ename, sal from emp
where ename = 'ALLEN'

select ename, sal from emp

ALLEN의 SAL = 1600

select ename, sal from emp
where sal > 1600

select ename, sal from emp
where (
            select sal from emp
            where ename = 'ALLEN'
          ) < sal




-- 아래 내용을 from절 아래에 적으면 인라인뷰이다.
select point_nu from t_giftpoint
where name_vc = '영화티켓'


select * from temp

select * from tdept

=======
서브쿼리 
where(and, or, exist, any, ...)절 아래 select(조건절)
조건절에 사용된 select문에 컬럼을 주쿼리에서 사용할 수 없다.
직접 조건이 아니라 간접 조건을 주었을 때


인라인뷰
from절 아래 select(집합)
집합에 사용된 select문에 컬럼명을 주쿼리에서 사용할 수 있다.
from절 아래 집합이 2개 이상 오는 경우, 경우의 수를 줄이는 목적으로 사용할 수 있다. - 일의 양을 줄일 수 있다.


서브쿼리와 인라인뷰의 공통점 - select문



이름 - t_gifmem
보유포인트 - t_giftmem, point_nu
영화티켓 - t_giftpoint, point_nu

                 성명                     /               보유포인트              /                 적용포인트                    /             잔여포인트
                회원                                          회원                                          상품                             회원.포인트 - 상품.포인트
                
                
create view v_emp1(e_ne, e_name)
as select empno, ename
     from emp
    where deptno = 10

select e_no, e_name from emp

select
         point_nu
 from (
            select point_nu from t_giftpoit
            where name_vc = '영화티켓'
         )
         
select
         mem.name_vc, mem.point_nu, point.point_nu
 from t_giftmem mem,
        (select point_nu from t_giftpoint
         where name_vc = '영화티켓'
        )point
where mem.point_nu >= point.point_nu

--우리회사에 근무하는 사원중에서 알렌보다 급여를 많이 받는 사원의 이름과 급여를 출력하는 sql문을 작성하시오

select * from emp

select ename, sal from emp
where ename = 'ALLEN'

select ename, sal from emp

ALLEN의 SAL = 1600

select ename, sal from emp
where sal > 1600

select ename, sal from emp
where (
            select sal from emp
            where ename = 'ALLEN'
          ) < sal




-- 아래 내용을 from절 아래에 적으면 인라인뷰이다.
select point_nu from t_giftpoint
where name_vc = '영화티켓'


select * from temp

select * from tdept

>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
select * from tcom