<<<<<<< HEAD
-- ����
temp���� ���, ����, �μ��ڵ带 �о�µ� �μ���Ī�� �Բ� ���� ���� ���

select * from temp -- emp_id, emp_name, dept_code


select * from tdept --  dept_code, dept_name


select *
 from temp a, tdept b
 
select *
 from temp a, tdept b
where a.dept_code = b.dept_code

select b.dept_code -- �ε��� �����Ѵ�.
 from temp a, tdept b
where a.dept_code = b.dept_code

select a.dept_code
 from temp a, tdept b
where a.dept_code = b.dept_code

select a.deptno
 from emp a, dept b
 
select nvl(a.deptno, 0)
 from emp a, dept b
 
select a.deptno
 from emp a, dept b
where a.deptno = 10

select a.deptno -- �ε��� �б�
 from emp a, dept b
where nvl(a.deptno, 0) = 10

select a.ename
 from emp a, dept b
where comm is not null

select 
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a, tdept b
where a.dept_code = b.dept_code

select 
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a join tdept b
    on a.dept_code = b.dept_code
    
    
select 
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a join tdept b
    on a.dept_code = b.dept_code
    
select 
         emp_id, emp_name
        ,dept_code, dept_name
 from temp natural join tdept
 

-- inner join�� join ������ �����ϴ� �ุ ������ ����� �����´�.

select
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a inner join tdept b
    on a.dept_code = b.dept_code
    
select a.deptno
 from emp a, dept b
where a.deptno = b.deptno
---------------------------------------------------

--  ��������
tcom�� work_year�� 2001�� �ڷ�� temp�� ������� �����ؼ� join �� ��
comm�� �޴� ������ ����, salary + comm�� ��ȸ�ϴ� sql���� �ۼ��Ͻÿ�

select * from tcom

-- tcom�� work_year�� 2001�� �ڷ�
select *  from tcom
where work_year = '2001'


select emp_id
 from tcom natural join temp
 
select *
 from tcom a, temp b
where a.emp_id = b.emp_id

select emp_name, comm, salary, comm + salary
 from tcom a, temp b
where a.emp_id = b.emp_id
  and work_year = '2001'
  and comm is not null

>>

select
         a. emp_id, a.emp_name
        ,a.salary + b.comm
 from temp a, tcom b
where a.emp_id = b.emp_id
   and b.work_year = '2001'
   
-- non-equal  join
=> join ������ =�� �ƴ� �ٸ� �����ȣ�� �־����� ���

temp�� emp_level�� �̿��� emp_level�� ���� ������
���� ����/���� ���� ���� ��� ������ ����� ����, ����, salary�� �о���� sql�� �ۼ�

select * from temp

select * from emp_level

-- ���� ������ ��-���� ����
select * from emp_level
where lev = '����'

select emp_id, emp_name, lev, salary from temp 
where 37000000 <= salary
          and salary <= 75000000
          
-- 37000000 ~ 75000000�� ������ ������ ���� ����

select 
         a.emp_id, a.emp_name, a.salary, a.lev
 from temp a, emp_level b
where a.salary between b.from_sal and b.to_sal
 and b.lev = '����'
 
>>

where temp.salary between from_sal and to_sal
and lev = '����'

------------------------------------------------------------------------
-- outer join : �ΰ� �̻��� �����̺� ���ν� �� �� ���̺��� �࿡ ���� 
--�ٸ��� ���̺� ��ġ�ϴ� ���� ������ �ٸ��� ���̺��� ���� null�� �Ͽ� ���� return�Ѵ�.

�� ����� �̸�, salary, �������ѱݾ�, �������ѱݾ��� ������ �Ѵ�. 
temp�� emp_level�� join�Ͽ� ����� �����ֵ�, 
������ �������� ��ϵǾ� ���� ���� ���� ����� ����, salary �������̶� ���� �� �ֵ��� sql�� �ۼ�

select * from temp

select * from emp_level

select a.emp_id, a.emp_name
        ,b.from_sal, b.to_sal
 from temp a, emp_level b
where a.lev = b.lev(+)


select *
 from temp
where emp_name = '�ֿ���'

>>

select 
         a.emp_id, a.emp_name, a.salary
        ,b.from_sal, b.to_sal
 from temp a, emp_level b
where a.lev = b.lev (+)

select 
         a.emp_id, a.emp_name, a.salary
        ,b.from_sal, b.to_sal
 from temp a left outer join emp_level b
    on a.lev = b.lev (+)
    
    
select 
         a.emp_id, a.emp_name, a.salary
        ,b.from_sal, b.to_sal
 from temp a right outer join emp_level b
    on a.lev = b.lev

---------------------------------------------------------------------------------------------
-- ����

tdept ���̺� �ڽ��� ���� �μ������� �����ϰ� �ִ�.
�� ���̺��� �̿��Ͽ� �μ��ڵ�, �μ���, �����μ� �ڵ�, �����μ����� �о���� sql�� �ۼ�

select * from tdept

select a.dept_code as "�μ��ڵ�"
        ,a.dept_name  as "�μ���"
        ,b.dept_code as "�����μ��ڵ�"
        ,b.dept_name as "�����μ���"
 from tdept a, tdept b
where a.parent_dept = b.dept_code

---------------------------------------------------------------------------------------------
-- ����
temp�� tdept�� �̿��Ͽ� ���� �÷��� �����ִ� SQL�� ����� ����.




�����μ��� 'CA0001'�� �μ��� �Ҽӵ� ������ 1.���, 2.����, 3.�μ��ڵ�
4.�μ���, 5.�����μ��ڵ�, 6.�����μ���, 7.�����μ����ڵ�, 8.�����μ��强��
������ �����ָ� �ȴ�.

select * from temp

select * from tdept

-- CA0001�� �μ�
select *
 from tdept
where parent_dept = 'CA0001'

-- CA0001�� �μ��� �Ҽӵ� ����
select emp_name
 from temp a, tdept b
where a.dept_code = b.dept_code
  and b.parent_dept = 'CA0001'


select a.emp_id as "���"
        ,a.emp_name as "����"
        ,b.dept_code as "�μ��ڵ�"
        ,b.dept_name as "�μ���"
        ,b.parent_dept as "�����μ��ڵ�"
 from temp a, tdept b
where a.dept_code = b.dept_code
  and b.parent_dept = 'CA0001'






=======
-- ����
temp���� ���, ����, �μ��ڵ带 �о�µ� �μ���Ī�� �Բ� ���� ���� ���

select * from temp -- emp_id, emp_name, dept_code


select * from tdept --  dept_code, dept_name


select *
 from temp a, tdept b
 
select *
 from temp a, tdept b
where a.dept_code = b.dept_code

select b.dept_code -- �ε��� �����Ѵ�.
 from temp a, tdept b
where a.dept_code = b.dept_code

select a.dept_code
 from temp a, tdept b
where a.dept_code = b.dept_code

select a.deptno
 from emp a, dept b
 
select nvl(a.deptno, 0)
 from emp a, dept b
 
select a.deptno
 from emp a, dept b
where a.deptno = 10

select a.deptno -- �ε��� �б�
 from emp a, dept b
where nvl(a.deptno, 0) = 10

select a.ename
 from emp a, dept b
where comm is not null

select 
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a, tdept b
where a.dept_code = b.dept_code

select 
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a join tdept b
    on a.dept_code = b.dept_code
    
    
select 
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a join tdept b
    on a.dept_code = b.dept_code
    
select 
         emp_id, emp_name
        ,dept_code, dept_name
 from temp natural join tdept
 

-- inner join�� join ������ �����ϴ� �ุ ������ ����� �����´�.

select
         a.emp_id, a.emp_name
        ,b.dept_code, b.dept_name
 from temp a inner join tdept b
    on a.dept_code = b.dept_code
    
select a.deptno
 from emp a, dept b
where a.deptno = b.deptno
---------------------------------------------------

--  ��������
tcom�� work_year�� 2001�� �ڷ�� temp�� ������� �����ؼ� join �� ��
comm�� �޴� ������ ����, salary + comm�� ��ȸ�ϴ� sql���� �ۼ��Ͻÿ�

select * from tcom

-- tcom�� work_year�� 2001�� �ڷ�
select *  from tcom
where work_year = '2001'


select emp_id
 from tcom natural join temp
 
select *
 from tcom a, temp b
where a.emp_id = b.emp_id

select emp_name, comm, salary, comm + salary
 from tcom a, temp b
where a.emp_id = b.emp_id
  and work_year = '2001'
  and comm is not null

>>

select
         a. emp_id, a.emp_name
        ,a.salary + b.comm
 from temp a, tcom b
where a.emp_id = b.emp_id
   and b.work_year = '2001'
   
-- non-equal  join
=> join ������ =�� �ƴ� �ٸ� �����ȣ�� �־����� ���

temp�� emp_level�� �̿��� emp_level�� ���� ������
���� ����/���� ���� ���� ��� ������ ����� ����, ����, salary�� �о���� sql�� �ۼ�

select * from temp

select * from emp_level

-- ���� ������ ��-���� ����
select * from emp_level
where lev = '����'

select emp_id, emp_name, lev, salary from temp 
where 37000000 <= salary
          and salary <= 75000000
          
-- 37000000 ~ 75000000�� ������ ������ ���� ����

select 
         a.emp_id, a.emp_name, a.salary, a.lev
 from temp a, emp_level b
where a.salary between b.from_sal and b.to_sal
 and b.lev = '����'
 
>>

where temp.salary between from_sal and to_sal
and lev = '����'

------------------------------------------------------------------------
-- outer join : �ΰ� �̻��� �����̺� ���ν� �� �� ���̺��� �࿡ ���� 
--�ٸ��� ���̺� ��ġ�ϴ� ���� ������ �ٸ��� ���̺��� ���� null�� �Ͽ� ���� return�Ѵ�.

�� ����� �̸�, salary, �������ѱݾ�, �������ѱݾ��� ������ �Ѵ�. 
temp�� emp_level�� join�Ͽ� ����� �����ֵ�, 
������ �������� ��ϵǾ� ���� ���� ���� ����� ����, salary �������̶� ���� �� �ֵ��� sql�� �ۼ�

select * from temp

select * from emp_level

select a.emp_id, a.emp_name
        ,b.from_sal, b.to_sal
 from temp a, emp_level b
where a.lev = b.lev(+)


select *
 from temp
where emp_name = '�ֿ���'

>>

select 
         a.emp_id, a.emp_name, a.salary
        ,b.from_sal, b.to_sal
 from temp a, emp_level b
where a.lev = b.lev (+)

select 
         a.emp_id, a.emp_name, a.salary
        ,b.from_sal, b.to_sal
 from temp a left outer join emp_level b
    on a.lev = b.lev (+)
    
    
select 
         a.emp_id, a.emp_name, a.salary
        ,b.from_sal, b.to_sal
 from temp a right outer join emp_level b
    on a.lev = b.lev

---------------------------------------------------------------------------------------------
-- ����

tdept ���̺� �ڽ��� ���� �μ������� �����ϰ� �ִ�.
�� ���̺��� �̿��Ͽ� �μ��ڵ�, �μ���, �����μ� �ڵ�, �����μ����� �о���� sql�� �ۼ�

select * from tdept

select a.dept_code as "�μ��ڵ�"
        ,a.dept_name  as "�μ���"
        ,b.dept_code as "�����μ��ڵ�"
        ,b.dept_name as "�����μ���"
 from tdept a, tdept b
where a.parent_dept = b.dept_code

---------------------------------------------------------------------------------------------
-- ����
temp�� tdept�� �̿��Ͽ� ���� �÷��� �����ִ� SQL�� ����� ����.




�����μ��� 'CA0001'�� �μ��� �Ҽӵ� ������ 1.���, 2.����, 3.�μ��ڵ�
4.�μ���, 5.�����μ��ڵ�, 6.�����μ���, 7.�����μ����ڵ�, 8.�����μ��强��
������ �����ָ� �ȴ�.

select * from temp

select * from tdept

-- CA0001�� �μ�
select *
 from tdept
where parent_dept = 'CA0001'

-- CA0001�� �μ��� �Ҽӵ� ����
select emp_name
 from temp a, tdept b
where a.dept_code = b.dept_code
  and b.parent_dept = 'CA0001'


select a.emp_id as "���"
        ,a.emp_name as "����"
        ,b.dept_code as "�μ��ڵ�"
        ,b.dept_name as "�μ���"
        ,b.parent_dept as "�����μ��ڵ�"
 from temp a, tdept b
where a.dept_code = b.dept_code
  and b.parent_dept = 'CA0001'






>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
