<<<<<<< HEAD
SELECT 
           ename
  FROM emp
  
  
SELECT 
            ename
   FROM emp
WHERE ename LIKE 'S%'

SELECT 
            ename
  FROM emp
WHERE ename LIKE '%S'

SELECT
           ename
  FROM emp
WHERE ename LIKE '%S%'

select * from emp

SELECT 
            deptno
  FROM emp
WHERE deptno LIKE '2%'

SELECT *
  FROM emp
WHERE ename LIKE '____S'

선분조건
점조건

SELECT ename, sal
  FROM emp
WHERE sal > 1000
    AND sal < 3000
    
SELECT ename, sal
  FROM emp
WHERE sal BETWEEN 1000 AND 3000

SELECT ename, sal
  FROM emp
WHERE sal >= 1000
    AND sal <= 3000
--------------------------------------------------------------

select 
         point_nu
        ,rank() over(order by point_nu desc) rnk
 from t_greport
 
select 
         point_nu
        ,rank() over(order by point_nu desc) rnk
        ,de
=======
SELECT 
           ename
  FROM emp
  
  
SELECT 
            ename
   FROM emp
WHERE ename LIKE 'S%'

SELECT 
            ename
  FROM emp
WHERE ename LIKE '%S'

SELECT
           ename
  FROM emp
WHERE ename LIKE '%S%'

select * from emp

SELECT 
            deptno
  FROM emp
WHERE deptno LIKE '2%'

SELECT *
  FROM emp
WHERE ename LIKE '____S'

선분조건
점조건

SELECT ename, sal
  FROM emp
WHERE sal > 1000
    AND sal < 3000
    
SELECT ename, sal
  FROM emp
WHERE sal BETWEEN 1000 AND 3000

SELECT ename, sal
  FROM emp
WHERE sal >= 1000
    AND sal <= 3000
--------------------------------------------------------------

select 
         point_nu
        ,rank() over(order by point_nu desc) rnk
 from t_greport
 
select 
         point_nu
        ,rank() over(order by point_nu desc) rnk
        ,de
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
 from t_greport