<<<<<<< HEAD
1. �� �޿��� ������ 18�� ������ Ȧ�� �޿��� ������ 1/18�� ���޵ǰ�, ¦�� �޿��� ������ 2/18�� ���޵ȴٰ� �������� ��, Ȧ�� �ް� ¦�� �޿� ���� �ݾ��� ��Ÿ���ÿ�.
SELECT EMP_NAME, SALARY/18 FROM TEMP -- Ȧ�� ��
SELECT EMP_NAME, SALARY/18*2 FROM TEMP -- ¦�� �� 
SELECT * FROM (SELECT EMP_NAME, SALARY/18 FROM TEMP) -- Ȧ�� ��
SELECT * FROM (SELECT EMP_NAME, SALARY/18*2 FROM TEMP) -- ¦�� ��

>>
SELECT emp_name, salary, salary/18 "Ȧ�� �� �޿�", salary/18*2 "¦�� �� �޿�" FROM TEMP

SELECT emp_name, salary, 
       round(salary/18, -1) "Ȧ�� �� �޿�", 
       round(salary/18*2, -1) "¦�� �� �޿�"
  FROM TEMP
  
SELECT emp_name, salary, 
       TO_CHAR(round(salary/18, -1), '999,999,999')||'��' "Ȧ�� �� �޿�", 
       TO_CHAR(round(salary/18*2, -1), '999,999,999')||'��' "¦�� �� �޿�"
  FROM TEMP

--
SELECT round(1234567.456, 1),  -- �Ҽ� 2��° �ڸ����� �ݿø��ϱ�
       round(1234567.456, -1), -- �Ҽ��� �������� ���� �ö󰡸� ������ ������ 
       round(1234567.456, -2), -- �Ҽ��� �������� ���� �ö󰡸� ������ ������
       round(1234567.456, 2)
  FROM dual 
  
SELECT
       550000, TO_CHAR(sysdate, 'YYMMDD')
       , TO_CHAR(sysdate, 'MMDD')
       , sysdate, sysdate-1, sysdate+1
  FROM dual

-- �������� ���������� ��ȯ���ִ� �Լ��� �ִ�.
to_char(��¥, 'YYYYMMDD')
to_char(500000, '999,999,999')

SELECT
       550000, TO_CHAR(550000, '999,999')
       , TO_CHAR(5500000, '999,999,999')
       , TO_CHAR(5500000.123, '999,999,999.999')
  FROM dual

2. ������ ���� �� �޿��� ����� 10������ ���޵ȴٸ�(¦������ 20����)���� ������ ��� �ٲ��� �ۼ��� ���ÿ�.
SELECT EMP_NAME, SALARY/18+100000 FROM TEMP -- Ȧ�� ��
SELECT EMP_NAME, SALARY/18*2+200000 FROM TEMP -- ¦�� �� 

>>
SELECT emp_name, salary, 
       TO_CHAR((round(salary/18, -1)+100000), '999,999,999')||'��' "Ȧ�� �� �޿�", 
       TO_CHAR((round(salary/18*2, -1)+200000), '999,999,999')||'��' "¦�� �� �޿�"
  FROM TEMP


3. TEMP ���̺��� ��̰� NULL �� �ƴ� ����� ������ �о���ÿ�.
SELECT EMP_NAME, HOBBY FROM TEMP
 WHERE HOBBY != 'null'
 
>>
SELECT emp_name FROM temp
 WHERE hobby != null
 
SELECT emp_name FROM temp hobby <> null
-- null�� �𸥴�, �������� �ʾҴٶ�� ��
-- �׷��� �������� �ƴϴ�.

SELECT
       count(empno), count(comm)
  FROM emp
  
--�츮 ȸ�翡 �ٹ��ϴ� ��� �߿��� �μ�Ƽ�긦 �޴� ����� �̸�, �μ�Ƽ�� �ݾ��� ����ϴ� SQL���� �ۼ��Ͻÿ�.

SELECT ename, comm FROM emp
 WHERE comm > 0
 
SELECT ename, comm FROM emp
 WHERE comm is not NULL
MINUS
SELECT ename, comm FROM emp
 WHERE comm = 0
-- ctrl + e ���� Ȯ��
 
SELECT ename, comm FROM emp
 WHERE comm is not NULL AND comm != 0;
 
SELECT ename, sal FROM emp

SELECT empno FROM emp
 WHERE ename = 'SCOTT'
 
SELECT empno FROM emp
 WHERE ename = 'scott'
 
-- �츮 ȸ�翡 �ٹ��ϴ� ��� �߿��� �μ���ȣ�� 10�̰ų� 30�� ����� �̸��� �μ� ��ȣ�� ����ϴ� sql���� �ۼ��Ͻÿ�.

SELECT * FROM emp

SELECT ename, deptno FROM emp
 WHERE deptno = 10 or deptno = 30
 
SELECT ename, deptno FROM emp
MINUS
SELECT ename, deptno FROM emp
 WHERE deptno = '20'
 
SELECT ename, deptno FROM emp
 WHERE deptno IN (10, 30) -- IN : �ΰ��� ���� ���� ������ �ҷ��´�.
 
-- �� �̱� �����̼��� ���̸� ���ڿ� - varchar2
SELECT ename, comm
  FROM emp
 WHERE comm = 'null'

-- �츮 ȸ�翡 �ٹ��ϴ� ������� �޿� �Ѿ��� ���Դϱ�?
SELECT sum(sal) FROM emp
 
SELECT 
       DECODE(job, 'CLERK', sal)
      ,DECODE(job, 'SALESMAN', sal)
      ,DECODE(job, 'CLERK', null, 'SALESMAN', null, sal)
  FROM emp
  
SELECT 
       SUM(DECODE(job, 'CLERK', sal)) as "clerk_sum"
      ,SUM(DECODE(job, 'SALESMAN', sal)) as "salesman_sum"
      ,SUM(DECODE(job, 'CLERK', null, 'SALESMAN', null, sal)) as "etc_sum"
  FROM emp

4. TEMP ���̺��� ��̰� NULL�� ����� ��� HOBBY�� "����"�̶�� ���� ġȯ�Ͽ� �������� �������� �״�� ���� �о���ÿ�.
SELECT NVL(HOBBY, '����') FROM TEMP -- NVL �Լ�(����Ŭ������ ���)

>>
SELECT comm, NVL(comm, 0) FROM emp
-- ���� ���̺� ���� ���ϴ� ���� �ƴϴ�.


5. TEMP�� �ڷ� �� HOBBY�� ���� NULL�� ����� ����ꡯ���� ġȯ���� �� HOBBY�� ������� ����� ������ �������� ������ �ۼ��Ͻÿ�.
SELECT EMP_NAME, NVL(HOBBY, '���') FROM TEMP

>>
SELECT emp_name, NVL(hobby, '���') FROM temp


6. TEMP�� �ڷ� �� EMP_ID�� EMP_NAME�� ���� �������,���������� ǥ�õǾ� DISPLAY�ǵ��� COLUMN ALLIAS�� �ο��Ͽ� SELECT �Ͻÿ�.
SELECT EMP_ID as "���", EMP_NAME as "����" FROM TEMP


7.TEMP�� �ڷḦ ���� ��(LEV)�� ASCENDING�ϸ鼭 ��������� �ٽ� ��� ������ DESCENDING�ϰ� �ϴ� ORDER BY�ϴ� ������ ����� ���ÿ�.
SELECT * FROM TEMP order by LEV ASC, EMP_ID DESC
=======
1. �� �޿��� ������ 18�� ������ Ȧ�� �޿��� ������ 1/18�� ���޵ǰ�, ¦�� �޿��� ������ 2/18�� ���޵ȴٰ� �������� ��, Ȧ�� �ް� ¦�� �޿� ���� �ݾ��� ��Ÿ���ÿ�.
SELECT EMP_NAME, SALARY/18 FROM TEMP -- Ȧ�� ��
SELECT EMP_NAME, SALARY/18*2 FROM TEMP -- ¦�� �� 
SELECT * FROM (SELECT EMP_NAME, SALARY/18 FROM TEMP) -- Ȧ�� ��
SELECT * FROM (SELECT EMP_NAME, SALARY/18*2 FROM TEMP) -- ¦�� ��

>>
SELECT emp_name, salary, salary/18 "Ȧ�� �� �޿�", salary/18*2 "¦�� �� �޿�" FROM TEMP

SELECT emp_name, salary, 
       round(salary/18, -1) "Ȧ�� �� �޿�", 
       round(salary/18*2, -1) "¦�� �� �޿�"
  FROM TEMP
  
SELECT emp_name, salary, 
       TO_CHAR(round(salary/18, -1), '999,999,999')||'��' "Ȧ�� �� �޿�", 
       TO_CHAR(round(salary/18*2, -1), '999,999,999')||'��' "¦�� �� �޿�"
  FROM TEMP

--
SELECT round(1234567.456, 1),  -- �Ҽ� 2��° �ڸ����� �ݿø��ϱ�
       round(1234567.456, -1), -- �Ҽ��� �������� ���� �ö󰡸� ������ ������ 
       round(1234567.456, -2), -- �Ҽ��� �������� ���� �ö󰡸� ������ ������
       round(1234567.456, 2)
  FROM dual 
  
SELECT
       550000, TO_CHAR(sysdate, 'YYMMDD')
       , TO_CHAR(sysdate, 'MMDD')
       , sysdate, sysdate-1, sysdate+1
  FROM dual

-- �������� ���������� ��ȯ���ִ� �Լ��� �ִ�.
to_char(��¥, 'YYYYMMDD')
to_char(500000, '999,999,999')

SELECT
       550000, TO_CHAR(550000, '999,999')
       , TO_CHAR(5500000, '999,999,999')
       , TO_CHAR(5500000.123, '999,999,999.999')
  FROM dual

2. ������ ���� �� �޿��� ����� 10������ ���޵ȴٸ�(¦������ 20����)���� ������ ��� �ٲ��� �ۼ��� ���ÿ�.
SELECT EMP_NAME, SALARY/18+100000 FROM TEMP -- Ȧ�� ��
SELECT EMP_NAME, SALARY/18*2+200000 FROM TEMP -- ¦�� �� 

>>
SELECT emp_name, salary, 
       TO_CHAR((round(salary/18, -1)+100000), '999,999,999')||'��' "Ȧ�� �� �޿�", 
       TO_CHAR((round(salary/18*2, -1)+200000), '999,999,999')||'��' "¦�� �� �޿�"
  FROM TEMP


3. TEMP ���̺��� ��̰� NULL �� �ƴ� ����� ������ �о���ÿ�.
SELECT EMP_NAME, HOBBY FROM TEMP
 WHERE HOBBY != 'null'
 
>>
SELECT emp_name FROM temp
 WHERE hobby != null
 
SELECT emp_name FROM temp hobby <> null
-- null�� �𸥴�, �������� �ʾҴٶ�� ��
-- �׷��� �������� �ƴϴ�.

SELECT
       count(empno), count(comm)
  FROM emp
  
--�츮 ȸ�翡 �ٹ��ϴ� ��� �߿��� �μ�Ƽ�긦 �޴� ����� �̸�, �μ�Ƽ�� �ݾ��� ����ϴ� SQL���� �ۼ��Ͻÿ�.

SELECT ename, comm FROM emp
 WHERE comm > 0
 
SELECT ename, comm FROM emp
 WHERE comm is not NULL
MINUS
SELECT ename, comm FROM emp
 WHERE comm = 0
-- ctrl + e ���� Ȯ��
 
SELECT ename, comm FROM emp
 WHERE comm is not NULL AND comm != 0;
 
SELECT ename, sal FROM emp

SELECT empno FROM emp
 WHERE ename = 'SCOTT'
 
SELECT empno FROM emp
 WHERE ename = 'scott'
 
-- �츮 ȸ�翡 �ٹ��ϴ� ��� �߿��� �μ���ȣ�� 10�̰ų� 30�� ����� �̸��� �μ� ��ȣ�� ����ϴ� sql���� �ۼ��Ͻÿ�.

SELECT * FROM emp

SELECT ename, deptno FROM emp
 WHERE deptno = 10 or deptno = 30
 
SELECT ename, deptno FROM emp
MINUS
SELECT ename, deptno FROM emp
 WHERE deptno = '20'
 
SELECT ename, deptno FROM emp
 WHERE deptno IN (10, 30) -- IN : �ΰ��� ���� ���� ������ �ҷ��´�.
 
-- �� �̱� �����̼��� ���̸� ���ڿ� - varchar2
SELECT ename, comm
  FROM emp
 WHERE comm = 'null'

-- �츮 ȸ�翡 �ٹ��ϴ� ������� �޿� �Ѿ��� ���Դϱ�?
SELECT sum(sal) FROM emp
 
SELECT 
       DECODE(job, 'CLERK', sal)
      ,DECODE(job, 'SALESMAN', sal)
      ,DECODE(job, 'CLERK', null, 'SALESMAN', null, sal)
  FROM emp
  
SELECT 
       SUM(DECODE(job, 'CLERK', sal)) as "clerk_sum"
      ,SUM(DECODE(job, 'SALESMAN', sal)) as "salesman_sum"
      ,SUM(DECODE(job, 'CLERK', null, 'SALESMAN', null, sal)) as "etc_sum"
  FROM emp

4. TEMP ���̺��� ��̰� NULL�� ����� ��� HOBBY�� "����"�̶�� ���� ġȯ�Ͽ� �������� �������� �״�� ���� �о���ÿ�.
SELECT NVL(HOBBY, '����') FROM TEMP -- NVL �Լ�(����Ŭ������ ���)

>>
SELECT comm, NVL(comm, 0) FROM emp
-- ���� ���̺� ���� ���ϴ� ���� �ƴϴ�.


5. TEMP�� �ڷ� �� HOBBY�� ���� NULL�� ����� ����ꡯ���� ġȯ���� �� HOBBY�� ������� ����� ������ �������� ������ �ۼ��Ͻÿ�.
SELECT EMP_NAME, NVL(HOBBY, '���') FROM TEMP

>>
SELECT emp_name, NVL(hobby, '���') FROM temp


6. TEMP�� �ڷ� �� EMP_ID�� EMP_NAME�� ���� �������,���������� ǥ�õǾ� DISPLAY�ǵ��� COLUMN ALLIAS�� �ο��Ͽ� SELECT �Ͻÿ�.
SELECT EMP_ID as "���", EMP_NAME as "����" FROM TEMP


7.TEMP�� �ڷḦ ���� ��(LEV)�� ASCENDING�ϸ鼭 ��������� �ٽ� ��� ������ DESCENDING�ϰ� �ϴ� ORDER BY�ϴ� ������ ����� ���ÿ�.
SELECT * FROM TEMP order by LEV ASC, EMP_ID DESC
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
