IS NOT NULL

SELECT ename, comm
  FROM emp 
 WHERE 
 
SELECT ename, comm
  FROM emp
MINUS
SELECT ename, comm
  FROM emp
 WHERE comm is null
 
SELECT ename, comm
  FROM emp
INTERSECT
SELECT ename, comm
  FROM emp
 WHERE comm != 0



-- ����
SELECT
  FROM
 WHERE
ORDER BY -- ��ĵ�Ѵ�� ������� ���ϰ� 2�� ������ �ؾ��ϸ� �Ѵ�. >> �ӵ��� ������.
-- order by�� ���� �ʰ� ������ �� �� �ִٸ� nice ! (�ӵ��� �������� �ʴ´�.)

-- ��Ʈ���� ����Ͽ� ��Ƽ���������� ������ ������ ������ �� �ִ�. ��Ÿ�� ������ ���õȴ�.

-- index�� �����ϴ� �÷��� ���̺� �＼�� ���� ����� �����ϴ�.
-- order by ���� ������ �� �ֵ��� �˻� �ӵ��� ���� �� �ִ�. 

SELECT 
       /*+index_desc(emp pk_emp)*/ empno
  FROM emp
  
-- ���̺��� pk�� �ε����� �����Ǳ� ������
-- �ε����� �ִ� �÷��� ���̤Ӻ� access ���� ��°�����

select rowid rno from emp

select ename, deptno, job from emp
 where rowid = 'AAARE8AAEAAAACTAAC'
 
-- DBMS�� ������ �ִ� ��� �������� ������ ������ �ĺ���
-- index ���̺��� index keydhk rowid�� ������
-- �����δ� �������� ������ index ���̺� ���� �ִ� rowid�� �ش��ϴ� �����͸� ã�� ���� �ϳ��� ������ �����̴�. 
-- 1) 6�ڸ�: ������ ������Ʈ ��ȣ
-- 2) 3�ڸ�: ������� ���� ��ȣ
-- 3) 6�ڸ�: ��Ϲ�ȣ
-- 4) 3�ڸ�: ��� ���� �� ��ȣ

rownum

SELECT rownum, empno FROM emp

SELECT rownum, empno FROM emp
 WHERE deptno = 30
 
 
-- group by�� 
�츮 ȸ�翡 �ٹ��ϴ� ����鿡 ���ؼ� �μ��� ��� ���� ����ϰ� �ʹ�. �������?

������� - fk -  deptno
fk�� �ߺ��� ����ȴ�.
�ε����� �������� �ʴ´�.
fk�� �����̼��̴�. (1:n ��������)

SELECT empno
  FROM emp
GROUP BY dname

SELECT deptno
  FROM emp
GROUP BY deptno

SELECT empno
  FROM emp
GROUP BY empno

SELECT count(empno)
  FROM emp
GROUP BY deptno

�Ϲ� �÷��� �׷��Լ��� ���� �� �� �ֳ�? ���� !
select sum(sal) from emp
select sum(sal), ename from emp

�������� ������ �ذ������� �ǹ̰� ����. (�������谡 ����)
select sum(sal), max(ename) from emp

select sum(sal) from emp
group by deptno -- �׷� �� ���� �����ش�.

select sum(sal) from emp

group by�� ����� �÷����� select ������ ������� �� �ǹ̰� �ִ�. �������谡 �ִ�.

select sum(sal), deptno from emp
group by deptno

select max(sal), avg(sal), deptno from emp
group by deptno





SELECT empno FROM emp
SELECT ename FROM emp
SELECT empno, ename FROM emp
-- ����Ŭ ���̺� �ȿ� �ε����� �ִ��� Ȯ���� �� �ִ�.

SELECT ename FROM emp
ORDER BY empno desc 

SELECT ename FROM emp


NVL


select * from t_letitbe
select mod(6,2), mod(6,3) from dual

if(6%2==0)

select decode(1,1,'����','�ٸ���'), decode(1,2,'����','�ٸ���') from dual