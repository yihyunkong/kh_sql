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
 
-- �ε����� �ִ� �÷��̴��� �����ϸ� �ε����� ����� �� ����. 
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
 
group by ���� ����� �÷��� ��밡���ϴ�. 
 
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
-- 56(14*4)�� - �Ͼ �� �ִ� ��� ����� ���̴�. - īŸ�þ��ǰ� - ������ ����
?
SELECT
       emp.ename, dept.deptno
  FROM emp, dept
?
National JOIN = equal join
?
���ʿ� �ִ°͸� ���´�.
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
��������, �ζ��κ�
?
����(emp[10,20,30], dept[10,20,30,40]) ���̺� �ִ� ���� �ƴ� 
���� ���̺�(dept)���� �ְ� �ٸ� ����(emp)���� ���� ��(40)�� ����� ��
��(emp)�� null�� �ϴ��� ��(dept)�� ������ �����ٷ�
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
���� �𸥴� �ݾ�
�𸣴°� �� ���� �ֳ�?
?
ename�� not null
pk not null unique unique index
?
SELECT 
       COUNT(ename), COUNT(comm), COUNT(*)
  FROM emp
  
�� comm�� null�� �ִ� �ɱ�? - ���谡 �� ����  
  
SELECT 
       COUNT(ename), COUNT(NVL(comm,0)), COUNT(*)
  FROM emp  
  
���� �� ���� ���� �ʴ´�.
���� ��츦 ���� ������� �ʴ´�.
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
 
-- �ε����� �ִ� �÷��̴��� �����ϸ� �ε����� ����� �� ����. 
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
 
group by ���� ����� �÷��� ��밡���ϴ�. 
 
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
-- 56(14*4)�� - �Ͼ �� �ִ� ��� ����� ���̴�. - īŸ�þ��ǰ� - ������ ����
?
SELECT
       emp.ename, dept.deptno
  FROM emp, dept
?
National JOIN = equal join
?
���ʿ� �ִ°͸� ���´�.
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
��������, �ζ��κ�
?
����(emp[10,20,30], dept[10,20,30,40]) ���̺� �ִ� ���� �ƴ� 
���� ���̺�(dept)���� �ְ� �ٸ� ����(emp)���� ���� ��(40)�� ����� ��
��(emp)�� null�� �ϴ��� ��(dept)�� ������ �����ٷ�
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
���� �𸥴� �ݾ�
�𸣴°� �� ���� �ֳ�?
?
ename�� not null
pk not null unique unique index
?
SELECT 
       COUNT(ename), COUNT(comm), COUNT(*)
  FROM emp
  
�� comm�� null�� �ִ� �ɱ�? - ���谡 �� ����  
  
SELECT 
       COUNT(ename), COUNT(NVL(comm,0)), COUNT(*)
  FROM emp  
  
���� �� ���� ���� �ʴ´�.
���� ��츦 ���� ������� �ʴ´�.
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