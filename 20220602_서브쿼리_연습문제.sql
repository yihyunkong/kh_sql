<<<<<<< HEAD
�������� ��������

4.tcom�� ���� �ܿ� Ŀ�̼��� �޴� ������ ����� �����Ǿ� �ִ�.
�� ������ ���������� select�Ͽ� �μ� ��Ī���� Ŀ�̼��� �޴�
�ο����� ���� ������ ����� ���ÿ�.


1.temp���� ������ ���� ���� ������ row�� ã�Ƽ� �� �ݾװ� ������ �ݾ���
�޴� ������ ����� ������ ����Ͻÿ�.

select * from temp

select emp_name, salary from temp
order by salary desc

select max(salary)
 from temp
 
select * from temp
where salary = (
                        select max(salary)
                         from temp
                       )
-------------------------------------------------
2.temp�� �ڷḦ �̿��Ͽ� salary�� ����� ���ϰ� �̺��� ū �ݾ��� salary��
�޴� ������ ����� ����, ������ �����ֽÿ�.

select * from temp
 
select salary from temp

select avg(salary) from temp

select emp_id, emp_name, salary
from  temp
where (
            select avg(salary)
             from temp
          ) < salary

--------------------------------------------------------------------
3.temp�� ���� �� ��õ�� �ٹ��ϴ� ������ ����� ������ �о���� SQL�� ����
������ �̿��� �����ÿ�.

select * from temp, tdept

select emp_id, emp_name
 from temp
 
select * from tdept
where area = '��õ'

select dept_code from tdept

select emp_id, emp_name, dept_code
 from temp
where dept_code in(
                             select dept_code from tdept
                             where area = '��õ'
                            )
                            
                            
-------------------------------------------------------------------------------
4.tcom�� ���� �ܿ� Ŀ�̼��� �޴� ������ ����� �����Ǿ� �ִ�.
�� ������ ���������� select�Ͽ� �μ� ��Ī���� Ŀ�̼��� �޴�
�ο����� ���� ������ ����� ���ÿ�.

select emp_id from tcom

select count(emp_id), dept_name
 from temp, tdept
where emp_id in(
                         select emp_id
                          from tcom
                        )
   and temp.dept_code = tdept.dept_code
group by dept_name
          
=======
�������� ��������

4.tcom�� ���� �ܿ� Ŀ�̼��� �޴� ������ ����� �����Ǿ� �ִ�.
�� ������ ���������� select�Ͽ� �μ� ��Ī���� Ŀ�̼��� �޴�
�ο����� ���� ������ ����� ���ÿ�.


1.temp���� ������ ���� ���� ������ row�� ã�Ƽ� �� �ݾװ� ������ �ݾ���
�޴� ������ ����� ������ ����Ͻÿ�.

select * from temp

select emp_name, salary from temp
order by salary desc

select max(salary)
 from temp
 
select * from temp
where salary = (
                        select max(salary)
                         from temp
                       )
-------------------------------------------------
2.temp�� �ڷḦ �̿��Ͽ� salary�� ����� ���ϰ� �̺��� ū �ݾ��� salary��
�޴� ������ ����� ����, ������ �����ֽÿ�.

select * from temp
 
select salary from temp

select avg(salary) from temp

select emp_id, emp_name, salary
from  temp
where (
            select avg(salary)
             from temp
          ) < salary

--------------------------------------------------------------------
3.temp�� ���� �� ��õ�� �ٹ��ϴ� ������ ����� ������ �о���� SQL�� ����
������ �̿��� �����ÿ�.

select * from temp, tdept

select emp_id, emp_name
 from temp
 
select * from tdept
where area = '��õ'

select dept_code from tdept

select emp_id, emp_name, dept_code
 from temp
where dept_code in(
                             select dept_code from tdept
                             where area = '��õ'
                            )
                            
                            
-------------------------------------------------------------------------------
4.tcom�� ���� �ܿ� Ŀ�̼��� �޴� ������ ����� �����Ǿ� �ִ�.
�� ������ ���������� select�Ͽ� �μ� ��Ī���� Ŀ�̼��� �޴�
�ο����� ���� ������ ����� ���ÿ�.

select emp_id from tcom

select count(emp_id), dept_name
 from temp, tdept
where emp_id in(
                         select emp_id
                          from tcom
                        )
   and temp.dept_code = tdept.dept_code
group by dept_name
          
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
         