SELECT deptno, dname, loc FROM dept

SELECT empno, ename, job, mgr, hiredate, comm, sal, deptno FROM emp

192.168.40.27 ���� 
192.168.40.24 ����
192.168.10.5

-- ���̺� ����� ���� �����ϱ�
���Ἲ �������� (FK_DEPTNO) ������ ������ �Ұ����ϴ�. 
������� ������ �Ұ��ϴ�.  -  �����͸� �����ϰ� ������ �� �ִ�. 
�ε����� �����ȴ�. (���� - �˻� �ӵ� �ſ� ������.)
������ �ٴ��� �ʱ� ������ �Ҿ���� ������ ����. 
��Ʈ�� �� ���� ������ ���ص� �ȴ�.

DELETE FROM dept

DELETE FROM emp

rollback

dept deptno pk�̰� - �⺻Ű
emp deptno fk�̴�. - �ܷ�Ű

SELECT �÷���1, �÷���2, ...
  FROM �����̸�(emp, dept)
 WHERE (������) �÷��� =(���Կ����� x, ����.) ��
 
�츮 ȸ�翡 �ٹ��ϴ� ��� �߿��� �̸��� SCOTT�� ����� �ִ�?

SELECT empno
  FROM emp
 WHERE ename = 'SCOTT'

SELECT 1 as "�����ϴ�?(1:�ִ�, 0:����)"
  FROM emp
 WHERE ename = 'SCOTT'
 
 SELECT count(empno) -- count�� �Լ� >> �Լ���(�÷���)�� ���ؼ� ���ϱ�
  FROM emp
 WHERE ename = 'SCOTT'

�츮 ȸ�翡 �ٹ��ϴ� ��� �߿��� �̸��� SCOTT�� ����� ����̴�?

tomato ���̵� �����ϴ�?
tomato ���̵� ��ִ�? 

edit member
commit

-- ���̵�� ����� ��ġ�ϴ� ��쿡�� ��� ����� �� �� �ִ�.
-- �����͸� �߰��� �� commit���� ������ ���� DB table�� �ݿ����� �ʴ´�.
--�ڽ� ������ �ٶ� ���� ����� �ִ� �� ó�� ���������� �ܺο��� �����ϸ� �� �� ����.

SELECT -- �����׽�Ʈ
       mem_name
  FROM member
 WHERE mem_id =:mid
   AND mem_pw =:mpw

SELECT * FROM member

query��
SQL��

INSERT INTO member(mem_no, mem_id, mem_pw, mem_name) -- ���̺� �� �߰��ϱ�
VALUES (4, 'nice', '123', '������')

commit
