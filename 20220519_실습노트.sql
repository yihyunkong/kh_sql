--DDL(��ü����) - DBA 

--DCL(����) - DB���� ���

--DML (SELECT, INSERT, DELETE, UPDATE) : ������ ���۾� ** 

--��ȸ(�����ȸ, �ֹ���ȸ ��� ...)

--�Է�, ����, ����(�Ƿ� ���̰� ���� ����.)

--SELECT �÷���1, �÷���2, ...
-- FROM �����̸�(SELECT�� - �ζ��� ��) 
 
SELECT ename, job 
  FROM emp
  
SELECT ename, job, hiredate
  FROM emp
  
SELECT ename as "�̸�", job, hiredate
  FROM emp
 
--50����
--��Ƽ������ - �ϲ� - JVM

�츮ȸ�翡 �ٹ��ϴ� ��� �߿��� ALLEN����� �޿��� ���ΰ���?

SELECT empno, ename, job, sal
  FROM emp
  WHERE ename = 'ALLEN';
   
--Select(�˻�, ��ȸ. �α���)�� ���۾� (DML ������ ���۾� data management language)
--Insert(�Է�. ȸ������)
--Update(����)
--Delete(����)

�츮ȸ�翡 �ٹ��ϴ� ��� �߿��� �޿��� 1000�޷� �̻��� ����� �̸�, �޿��� ����ϴ� select ���� �ۼ��ϼ���.

SELECT ename, sal
  FROM emp
 WHERE sal >= 1000; -- WHERE ���� if���� ����.���� �˻��� where�� ����ϱ�

--where.. and(������)
SELECT ename, sal
  FROM emp 
 WHERE sal >= 2000
   AND deptno = 20
   
--or�� ������. �� �� �ϳ��� ����
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
 --commit : �������� ���̺� ���� �ݿ��ϴ� ��
 
 ���� : entity (���� �𵨸�) dept
 ���̺� : table (������ �𵨸� - ���� ����) emp
 
 dept : empno = 1 : n
 �ϳ��� �μ� : ���� ��� 