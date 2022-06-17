--DDL(객체생성) - DBA 

--DCL(권한) - DB서버 운영자

--DML (SELECT, INSERT, DELETE, UPDATE) : 데이터 조작어 ** 

--조회(배송조회, 주문조회 경우 ...)

--입력, 수정, 삭제(실력 차이가 거의 없다.)

--SELECT 컬럼명1, 컬럼명2, ...
-- FROM 집합이름(SELECT문 - 인라인 뷰) 
 
SELECT ename, job 
  FROM emp
  
SELECT ename, job, hiredate
  FROM emp
  
SELECT ename as "이름", job, hiredate
  FROM emp
 
--50만명
--옵티마이저 - 일꾼 - JVM

우리회사에 근무하는 사원 중에서 ALLEN사원의 급여는 얼마인가요?

SELECT empno, ename, job, sal
  FROM emp
  WHERE ename = 'ALLEN';
   
--Select(검색, 조회. 로그인)는 조작어 (DML 데이터 조작어 data management language)
--Insert(입력. 회원가입)
--Update(수정)
--Delete(삭제)

우리회사에 근무하는 사원 중에서 급여가 1000달러 이상인 사원의 이름, 급여를 출력하는 select 문을 작성하세요.

SELECT ename, sal
  FROM emp
 WHERE sal >= 1000; -- WHERE 절은 if문과 같다.조건 검색시 where절 사용하기

--where.. and(교집합)
SELECT ename, sal
  FROM emp 
 WHERE sal >= 2000
   AND deptno = 20
   
--or는 합집합. 둘 중 하나만 만족
SELECT ename, sal
  FROM emp 
 WHERE sal >= 2000
    OR deptno = 20
    
    
SELECT sal
  FROM emp
 WHERE ename = 'allen'
 
SELECT sal
  FROM emp
 WHERE ename = 'allEN'
 --commit : 물리적인 테이블에 값을 반영하는 것
 
 집합 : entity (논리적 모델링) dept
 테이블 : table (물리적 모델링 - 실제 구현) emp
 
 dept : empno = 1 : n
 하나의 부서 : 여러 사원 