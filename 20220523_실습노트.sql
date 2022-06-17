<<<<<<< HEAD
SELECT 1+5, 6-2, 2*3, 10/2 FROM dual -- select  컬럼 + from  집합
-- 컬럼의 위치에서 연산이 가능하다. 
-- 콤마를 사용하면서 컬럼이 오른쪽으로 늘어난다. (패턴)
-- 컬럼은 여러개 올 수 있다. (콤마로 구분)

SELECT count(empno) FROM emp -- count는 집계함수

SELECT count(empno)
  FROM (SELECT ename, empno FROM emp WHERE sal >= 2000)
-- FROM 다음에 SELECT 문 올 수 있다. (인라인 뷰 >> 보안(금융))
-- if절은 WHERE절과 같다.
  
SELECT ename, empno FROM emp WHERE sal >= 2000

SELECT 1 FROM dual
UNION ALL
SELECT 2 FROM dual
UNION ALL
SELECT 3 FROM dual
-- UNION ALL : 각 집합의 모든 결과를 포함한 합집합(중복제거 안한다.)

SELECT * FROM emp
SELECT * FROM dept

SELECT deptno FROM emp
MINUS
SELECT deptno FROM dept

SELECT deptno FROM dept
MINUS
SELECT deptno FROM emp
-- MINUS : 각각 다른 집합에서 차집합 구할 수 있다. (순서를 바꾸면 값도 달라진다. A-B != B-A)

SELECT deptno FROM dept
INTERSECT
SELECT deptno FROM emp
-- INERSECT : 교집합

=======
SELECT 1+5, 6-2, 2*3, 10/2 FROM dual -- select  컬럼 + from  집합
-- 컬럼의 위치에서 연산이 가능하다. 
-- 콤마를 사용하면서 컬럼이 오른쪽으로 늘어난다. (패턴)
-- 컬럼은 여러개 올 수 있다. (콤마로 구분)

SELECT count(empno) FROM emp -- count는 집계함수

SELECT count(empno)
  FROM (SELECT ename, empno FROM emp WHERE sal >= 2000)
-- FROM 다음에 SELECT 문 올 수 있다. (인라인 뷰 >> 보안(금융))
-- if절은 WHERE절과 같다.
  
SELECT ename, empno FROM emp WHERE sal >= 2000

SELECT 1 FROM dual
UNION ALL
SELECT 2 FROM dual
UNION ALL
SELECT 3 FROM dual
-- UNION ALL : 각 집합의 모든 결과를 포함한 합집합(중복제거 안한다.)

SELECT * FROM emp
SELECT * FROM dept

SELECT deptno FROM emp
MINUS
SELECT deptno FROM dept

SELECT deptno FROM dept
MINUS
SELECT deptno FROM emp
-- MINUS : 각각 다른 집합에서 차집합 구할 수 있다. (순서를 바꾸면 값도 달라진다. A-B != B-A)

SELECT deptno FROM dept
INTERSECT
SELECT deptno FROM emp
-- INERSECT : 교집합

>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
DELETE FROM dept