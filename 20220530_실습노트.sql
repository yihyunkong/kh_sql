<<<<<<< HEAD
CREATE USER SAMPLE IDENTIFIED BY tiger;
?
SELECT * FROM dept
?
SELECT empno FROM emp
 WHERE NVL(empno,0) = 7566
?
SELECT /*+index_desc(emp PK_EMP) */ empno
  FROM emp
?
SELECT ename FROM emp
ORDER BY ename desc
?
SELECT ename FROM emp
 WHERE ename is null
 
SELECT ename FROM emp
 WHERE ename ='XXX' 
 
-- 인덱스가 있는 컬럼이더라도 가공하면 인덱스를 사용할 수 없다. 
?
SELECT ename FROM emp
 WHERE NVL(ename,'0') ='XXX'  
?
SELECT empno FROM emp
?
create index i_ename
on emp(ename)
?
SELECT ename, deptno
 FROM emp
 
group by 절에 사용한 컬럼만 사용가능하다. 
 
SELECT ename, deptno
 FROM emp
GROUP BY deptno
?
?
SELECT ename, deptno
 FROM emp
GROUP BY deptno, ename
?
SELECT ename, deptno
 FROM emp
 
SELECT count(ename), deptno
 FROM emp
GROUP BY deptno
?
SELECT * FROM dept
?
-- 56(14*4)건 - 일어날 수 있는 모든 경우의 수이다. - 카타시안의곱 - 묻지마 조인
?
SELECT
       emp.ename, dept.deptno
  FROM emp, dept
?
National JOIN = equal join
?
양쪽에 있는것만 나온다.
?
SELECT
       emp.ename, dept.deptno
  FROM emp, dept
 WHERE emp.deptno = dept.deptno 
 
SELECT
       emp.ename, dept.deptno
  FROM emp, dept
 WHERE emp.deptno(+) = dept.deptno  
 
SELECT
       COUNT(emp.ename), dept.deptno
  FROM emp, dept
 WHERE emp.deptno(+) = dept.deptno 
GROUP BY dept.deptno  
?
서브쿼리, 인라인뷰
?
양쪽(emp[10,20,30], dept[10,20,30,40]) 테이블에 있는 것이 아닌 
한쪽 테이블(dept)에만 있고 다른 한쪽(emp)에는 없는 것(40)을 출력할 때
나(emp)는 null로 하더라도 너(dept)는 있으면 보여줄래
?
SELECT
       COUNT(emp.ename), dept.deptno, dept.dname
  FROM emp, dept
 WHERE emp.deptno(+) = dept.deptno 
GROUP BY dept.deptno, dept.dname
?
SELECT
       COUNT(emp.ename), dept.deptno, dept.dname
  FROM emp, dept
 WHERE emp.deptno = dept.deptno(+) 
GROUP BY dept.deptno, dept.dname
?
널은 모른다 잖아
모르는걸 셀 수가 있나?
?
ename은 not null
pk not null unique unique index
?
SELECT 
       COUNT(ename), COUNT(comm), COUNT(*)
  FROM emp
  
왜 comm에 null이 있는 걸까? - 설계가 잘 못됨  
  
SELECT 
       COUNT(ename), COUNT(NVL(comm,0)), COUNT(*)
  FROM emp  
  
널인 건 굳이 세지 않는다.
널인 경우를 굳이 계산하지 않는다.
?
SELECT sum(comm) FROM emp  
  
  
SELECT distinct(deptno) FROM emp
?
SELECT deptno FROM emp
UNION ALL
SELECT deptno FROM dept  
?
SELECT deptno FROM emp
UNION
=======
CREATE USER SAMPLE IDENTIFIED BY tiger;
?
SELECT * FROM dept
?
SELECT empno FROM emp
 WHERE NVL(empno,0) = 7566
?
SELECT /*+index_desc(emp PK_EMP) */ empno
  FROM emp
?
SELECT ename FROM emp
ORDER BY ename desc
?
SELECT ename FROM emp
 WHERE ename is null
 
SELECT ename FROM emp
 WHERE ename ='XXX' 
 
-- 인덱스가 있는 컬럼이더라도 가공하면 인덱스를 사용할 수 없다. 
?
SELECT ename FROM emp
 WHERE NVL(ename,'0') ='XXX'  
?
SELECT empno FROM emp
?
create index i_ename
on emp(ename)
?
SELECT ename, deptno
 FROM emp
 
group by 절에 사용한 컬럼만 사용가능하다. 
 
SELECT ename, deptno
 FROM emp
GROUP BY deptno
?
?
SELECT ename, deptno
 FROM emp
GROUP BY deptno, ename
?
SELECT ename, deptno
 FROM emp
 
SELECT count(ename), deptno
 FROM emp
GROUP BY deptno
?
SELECT * FROM dept
?
-- 56(14*4)건 - 일어날 수 있는 모든 경우의 수이다. - 카타시안의곱 - 묻지마 조인
?
SELECT
       emp.ename, dept.deptno
  FROM emp, dept
?
National JOIN = equal join
?
양쪽에 있는것만 나온다.
?
SELECT
       emp.ename, dept.deptno
  FROM emp, dept
 WHERE emp.deptno = dept.deptno 
 
SELECT
       emp.ename, dept.deptno
  FROM emp, dept
 WHERE emp.deptno(+) = dept.deptno  
 
SELECT
       COUNT(emp.ename), dept.deptno
  FROM emp, dept
 WHERE emp.deptno(+) = dept.deptno 
GROUP BY dept.deptno  
?
서브쿼리, 인라인뷰
?
양쪽(emp[10,20,30], dept[10,20,30,40]) 테이블에 있는 것이 아닌 
한쪽 테이블(dept)에만 있고 다른 한쪽(emp)에는 없는 것(40)을 출력할 때
나(emp)는 null로 하더라도 너(dept)는 있으면 보여줄래
?
SELECT
       COUNT(emp.ename), dept.deptno, dept.dname
  FROM emp, dept
 WHERE emp.deptno(+) = dept.deptno 
GROUP BY dept.deptno, dept.dname
?
SELECT
       COUNT(emp.ename), dept.deptno, dept.dname
  FROM emp, dept
 WHERE emp.deptno = dept.deptno(+) 
GROUP BY dept.deptno, dept.dname
?
널은 모른다 잖아
모르는걸 셀 수가 있나?
?
ename은 not null
pk not null unique unique index
?
SELECT 
       COUNT(ename), COUNT(comm), COUNT(*)
  FROM emp
  
왜 comm에 null이 있는 걸까? - 설계가 잘 못됨  
  
SELECT 
       COUNT(ename), COUNT(NVL(comm,0)), COUNT(*)
  FROM emp  
  
널인 건 굳이 세지 않는다.
널인 경우를 굳이 계산하지 않는다.
?
SELECT sum(comm) FROM emp  
  
  
SELECT distinct(deptno) FROM emp
?
SELECT deptno FROM emp
UNION ALL
SELECT deptno FROM dept  
?
SELECT deptno FROM emp
UNION
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
SELECT deptno FROM dept 