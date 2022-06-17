<<<<<<< HEAD
-- 문제
temp에서 사번, 성명, 부서코드를 읽어내는데 부서명칭을 함께 보고 싶은 경우

select * from temp -- emp_id, emp_name, dept_code


select * from tdept --  dept_code, dept_name


select *
 from temp a, tdept b
 
select *
 from temp a, tdept b
where a.dept_code = b.dept_code

select b.dept_code -- 인덱스 포함한다.
 from temp a, tdept b
where a.dept_code = b.dept_code

select a.dept_code
 from temp a, tdept b
where a.dept_code = b.dept_code

select a.deptno
 from emp a, dept b
 
select nvl(a.deptno, 0)
 from emp a, dept b
 
select a.deptno
 from emp a, dept b
where a.deptno = 10

select a.deptno -- 인덱스 읽기
 from emp a, dept b
where nvl(a.deptno, 0) = 10

select a.ename
 from emp a, dept b
where comm is not null

select 
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a, tdept b
where a.dept_code = b.dept_code

select 
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a join tdept b
    on a.dept_code = b.dept_code
    
    
select 
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a join tdept b
    on a.dept_code = b.dept_code
    
select 
         emp_id, emp_name
        ,dept_code, dept_name
 from temp natural join tdept
 

-- inner join은 join 조건을 만족하는 행만 질의의 결과로 가져온다.

select
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a inner join tdept b
    on a.dept_code = b.dept_code
    
select a.deptno
 from emp a, dept b
where a.deptno = b.deptno
---------------------------------------------------

--  연습문제
tcom의 work_year가 2001인 자료와 temp를 사번으로 연결해서 join 한 후
comm을 받는 직원의 성명, salary + comm을 조회하는 sql문을 작성하시오

select * from tcom

-- tcom의 work_year가 2001인 자료
select *  from tcom
where work_year = '2001'


select emp_id
 from tcom natural join temp
 
select *
 from tcom a, temp b
where a.emp_id = b.emp_id

select emp_name, comm, salary, comm + salary
 from tcom a, temp b
where a.emp_id = b.emp_id
  and work_year = '2001'
  and comm is not null

>>

select
         a. emp_id, a.emp_name
        ,a.salary + b.comm
 from temp a, tcom b
where a.emp_id = b.emp_id
   and b.work_year = '2001'
   
-- non-equal  join
=> join 조건이 =이 아닌 다른 연산기호로 주어지는 경우

temp와 emp_level을 이용해 emp_level의 과장 직급의
연봉 상한/하한 범위 내에 드는 직원의 사번과 성명, 직급, salary를 읽어오는 sql문 작성

select * from temp

select * from emp_level

-- 과장 직급의 상-하한 범위
select * from emp_level
where lev = '과장'

select emp_id, emp_name, lev, salary from temp 
where 37000000 <= salary
          and salary <= 75000000
          
-- 37000000 ~ 75000000의 범위는 과장의 연봉 범위

select 
         a.emp_id, a.emp_name, a.salary, a.lev
 from temp a, emp_level b
where a.salary between b.from_sal and b.to_sal
 and b.lev = '과장'
 
>>

where temp.salary between from_sal and to_sal
and lev = '과장'

------------------------------------------------------------------------
-- outer join : 두개 이상으 ㅣ태이블 조인시 한 쪽 테이블의 행에 대해 
--다른쪽 테이블에 일치하는 행이 없더라도 다른쪽 테이블의 행을 null로 하여 행을 return한다.

각 사번의 이름, salary, 연봉하한금액, 연봉상한금액을 보고자 한다. 
temp와 emp_level을 join하여 결과를 보여주되, 
연봉의 상하한이 등록되어 있지 않은 수습 사원은 성명, salary 까지만이라도 나올 수 있도록 sql문 작성

select * from temp

select * from emp_level

select a.emp_id, a.emp_name
        ,b.from_sal, b.to_sal
 from temp a, emp_level b
where a.lev = b.lev(+)


select *
 from temp
where emp_name = '최오대'

>>

select 
         a.emp_id, a.emp_name, a.salary
        ,b.from_sal, b.to_sal
 from temp a, emp_level b
where a.lev = b.lev (+)

select 
         a.emp_id, a.emp_name, a.salary
        ,b.from_sal, b.to_sal
 from temp a left outer join emp_level b
    on a.lev = b.lev (+)
    
    
select 
         a.emp_id, a.emp_name, a.salary
        ,b.from_sal, b.to_sal
 from temp a right outer join emp_level b
    on a.lev = b.lev

---------------------------------------------------------------------------------------------
-- 문제

tdept 테이블에 자신의 상위 부서정보를 관리하고 있다.
이 테이블을 이용하여 부서코드, 부서명, 상위부서 코드, 상위부서명을 읽어오는 sql문 작성

select * from tdept

select a.dept_code as "부서코드"
        ,a.dept_name  as "부서명"
        ,b.dept_code as "상위부서코드"
        ,b.dept_name as "상위부서명"
 from tdept a, tdept b
where a.parent_dept = b.dept_code

---------------------------------------------------------------------------------------------
-- 문제
temp와 tdept를 이용하여 다음 컬럼을 보여주는 SQL을 만들어 보자.




상위부서가 'CA0001'인 부서에 소속된 직원을 1.사번, 2.성명, 3.부서코드
4.부서명, 5.상위부서코드, 6.상위부서명, 7.상위부서장코드, 8.상위부서장성명
순서로 보여주면 된다.

select * from temp

select * from tdept

-- CA0001인 부서
select *
 from tdept
where parent_dept = 'CA0001'

-- CA0001인 부서에 소속된 직원
select emp_name
 from temp a, tdept b
where a.dept_code = b.dept_code
  and b.parent_dept = 'CA0001'


select a.emp_id as "사번"
        ,a.emp_name as "성명"
        ,b.dept_code as "부서코드"
        ,b.dept_name as "부서명"
        ,b.parent_dept as "상위부서코드"
 from temp a, tdept b
where a.dept_code = b.dept_code
  and b.parent_dept = 'CA0001'






=======
-- 문제
temp에서 사번, 성명, 부서코드를 읽어내는데 부서명칭을 함께 보고 싶은 경우

select * from temp -- emp_id, emp_name, dept_code


select * from tdept --  dept_code, dept_name


select *
 from temp a, tdept b
 
select *
 from temp a, tdept b
where a.dept_code = b.dept_code

select b.dept_code -- 인덱스 포함한다.
 from temp a, tdept b
where a.dept_code = b.dept_code

select a.dept_code
 from temp a, tdept b
where a.dept_code = b.dept_code

select a.deptno
 from emp a, dept b
 
select nvl(a.deptno, 0)
 from emp a, dept b
 
select a.deptno
 from emp a, dept b
where a.deptno = 10

select a.deptno -- 인덱스 읽기
 from emp a, dept b
where nvl(a.deptno, 0) = 10

select a.ename
 from emp a, dept b
where comm is not null

select 
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a, tdept b
where a.dept_code = b.dept_code

select 
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a join tdept b
    on a.dept_code = b.dept_code
    
    
select 
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a join tdept b
    on a.dept_code = b.dept_code
    
select 
         emp_id, emp_name
        ,dept_code, dept_name
 from temp natural join tdept
 

-- inner join은 join 조건을 만족하는 행만 질의의 결과로 가져온다.

select
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a inner join tdept b
    on a.dept_code = b.dept_code
    
select a.deptno
 from emp a, dept b
where a.deptno = b.deptno
---------------------------------------------------

--  연습문제
tcom의 work_year가 2001인 자료와 temp를 사번으로 연결해서 join 한 후
comm을 받는 직원의 성명, salary + comm을 조회하는 sql문을 작성하시오

select * from tcom

-- tcom의 work_year가 2001인 자료
select *  from tcom
where work_year = '2001'


select emp_id
 from tcom natural join temp
 
select *
 from tcom a, temp b
where a.emp_id = b.emp_id

select emp_name, comm, salary, comm + salary
 from tcom a, temp b
where a.emp_id = b.emp_id
  and work_year = '2001'
  and comm is not null

>>

select
         a. emp_id, a.emp_name
        ,a.salary + b.comm
 from temp a, tcom b
where a.emp_id = b.emp_id
   and b.work_year = '2001'
   
-- non-equal  join
=> join 조건이 =이 아닌 다른 연산기호로 주어지는 경우

temp와 emp_level을 이용해 emp_level의 과장 직급의
연봉 상한/하한 범위 내에 드는 직원의 사번과 성명, 직급, salary를 읽어오는 sql문 작성

select * from temp

select * from emp_level

-- 과장 직급의 상-하한 범위
select * from emp_level
where lev = '과장'

select emp_id, emp_name, lev, salary from temp 
where 37000000 <= salary
          and salary <= 75000000
          
-- 37000000 ~ 75000000의 범위는 과장의 연봉 범위

select 
         a.emp_id, a.emp_name, a.salary, a.lev
 from temp a, emp_level b
where a.salary between b.from_sal and b.to_sal
 and b.lev = '과장'
 
>>

where temp.salary between from_sal and to_sal
and lev = '과장'

------------------------------------------------------------------------
-- outer join : 두개 이상으 ㅣ태이블 조인시 한 쪽 테이블의 행에 대해 
--다른쪽 테이블에 일치하는 행이 없더라도 다른쪽 테이블의 행을 null로 하여 행을 return한다.

각 사번의 이름, salary, 연봉하한금액, 연봉상한금액을 보고자 한다. 
temp와 emp_level을 join하여 결과를 보여주되, 
연봉의 상하한이 등록되어 있지 않은 수습 사원은 성명, salary 까지만이라도 나올 수 있도록 sql문 작성

select * from temp

select * from emp_level

select a.emp_id, a.emp_name
        ,b.from_sal, b.to_sal
 from temp a, emp_level b
where a.lev = b.lev(+)


select *
 from temp
where emp_name = '최오대'

>>

select 
         a.emp_id, a.emp_name, a.salary
        ,b.from_sal, b.to_sal
 from temp a, emp_level b
where a.lev = b.lev (+)

select 
         a.emp_id, a.emp_name, a.salary
        ,b.from_sal, b.to_sal
 from temp a left outer join emp_level b
    on a.lev = b.lev (+)
    
    
select 
         a.emp_id, a.emp_name, a.salary
        ,b.from_sal, b.to_sal
 from temp a right outer join emp_level b
    on a.lev = b.lev

---------------------------------------------------------------------------------------------
-- 문제

tdept 테이블에 자신의 상위 부서정보를 관리하고 있다.
이 테이블을 이용하여 부서코드, 부서명, 상위부서 코드, 상위부서명을 읽어오는 sql문 작성

select * from tdept

select a.dept_code as "부서코드"
        ,a.dept_name  as "부서명"
        ,b.dept_code as "상위부서코드"
        ,b.dept_name as "상위부서명"
 from tdept a, tdept b
where a.parent_dept = b.dept_code

---------------------------------------------------------------------------------------------
-- 문제
temp와 tdept를 이용하여 다음 컬럼을 보여주는 SQL을 만들어 보자.




상위부서가 'CA0001'인 부서에 소속된 직원을 1.사번, 2.성명, 3.부서코드
4.부서명, 5.상위부서코드, 6.상위부서명, 7.상위부서장코드, 8.상위부서장성명
순서로 보여주면 된다.

select * from temp

select * from tdept

-- CA0001인 부서
select *
 from tdept
where parent_dept = 'CA0001'

-- CA0001인 부서에 소속된 직원
select emp_name
 from temp a, tdept b
where a.dept_code = b.dept_code
  and b.parent_dept = 'CA0001'


select a.emp_id as "사번"
        ,a.emp_name as "성명"
        ,b.dept_code as "부서코드"
        ,b.dept_name as "부서명"
        ,b.parent_dept as "상위부서코드"
 from temp a, tdept b
where a.dept_code = b.dept_code
  and b.parent_dept = 'CA0001'






>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
