<<<<<<< HEAD
SELECT 1+5, 6-2, 2*3, 10/2 FROM dual -- select  �÷� + from  ����
-- �÷��� ��ġ���� ������ �����ϴ�. 
-- �޸��� ����ϸ鼭 �÷��� ���������� �þ��. (����)
-- �÷��� ������ �� �� �ִ�. (�޸��� ����)

SELECT count(empno) FROM emp -- count�� �����Լ�

SELECT count(empno)
  FROM (SELECT ename, empno FROM emp WHERE sal >= 2000)
-- FROM ������ SELECT �� �� �� �ִ�. (�ζ��� �� >> ����(����))
-- if���� WHERE���� ����.
  
SELECT ename, empno FROM emp WHERE sal >= 2000

SELECT 1 FROM dual
UNION ALL
SELECT 2 FROM dual
UNION ALL
SELECT 3 FROM dual
-- UNION ALL : �� ������ ��� ����� ������ ������(�ߺ����� ���Ѵ�.)

SELECT * FROM emp
SELECT * FROM dept

SELECT deptno FROM emp
MINUS
SELECT deptno FROM dept

SELECT deptno FROM dept
MINUS
SELECT deptno FROM emp
-- MINUS : ���� �ٸ� ���տ��� ������ ���� �� �ִ�. (������ �ٲٸ� ���� �޶�����. A-B != B-A)

SELECT deptno FROM dept
INTERSECT
SELECT deptno FROM emp
-- INERSECT : ������

=======
SELECT 1+5, 6-2, 2*3, 10/2 FROM dual -- select  �÷� + from  ����
-- �÷��� ��ġ���� ������ �����ϴ�. 
-- �޸��� ����ϸ鼭 �÷��� ���������� �þ��. (����)
-- �÷��� ������ �� �� �ִ�. (�޸��� ����)

SELECT count(empno) FROM emp -- count�� �����Լ�

SELECT count(empno)
  FROM (SELECT ename, empno FROM emp WHERE sal >= 2000)
-- FROM ������ SELECT �� �� �� �ִ�. (�ζ��� �� >> ����(����))
-- if���� WHERE���� ����.
  
SELECT ename, empno FROM emp WHERE sal >= 2000

SELECT 1 FROM dual
UNION ALL
SELECT 2 FROM dual
UNION ALL
SELECT 3 FROM dual
-- UNION ALL : �� ������ ��� ����� ������ ������(�ߺ����� ���Ѵ�.)

SELECT * FROM emp
SELECT * FROM dept

SELECT deptno FROM emp
MINUS
SELECT deptno FROM dept

SELECT deptno FROM dept
MINUS
SELECT deptno FROM emp
-- MINUS : ���� �ٸ� ���տ��� ������ ���� �� �ִ�. (������ �ٲٸ� ���� �޶�����. A-B != B-A)

SELECT deptno FROM dept
INTERSECT
SELECT deptno FROM emp
-- INERSECT : ������

>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
DELETE FROM dept