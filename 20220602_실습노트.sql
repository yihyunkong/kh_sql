<<<<<<< HEAD
�������� 
where(and, or, exist, any, ...)�� �Ʒ� select(������)
�������� ���� select���� �÷��� ���������� ����� �� ����.
���� ������ �ƴ϶� ���� ������ �־��� ��


�ζ��κ�
from�� �Ʒ� select(����)
���տ� ���� select���� �÷����� ���������� ����� �� �ִ�.
from�� �Ʒ� ������ 2�� �̻� ���� ���, ����� ���� ���̴� �������� ����� �� �ִ�. - ���� ���� ���� �� �ִ�.


���������� �ζ��κ��� ������ - select��



�̸� - t_gifmem
��������Ʈ - t_giftmem, point_nu
��ȭƼ�� - t_giftpoint, point_nu

                 ����                     /               ��������Ʈ              /                 ��������Ʈ                    /             �ܿ�����Ʈ
                ȸ��                                          ȸ��                                          ��ǰ                             ȸ��.����Ʈ - ��ǰ.����Ʈ
                
                
create view v_emp1(e_ne, e_name)
as select empno, ename
     from emp
    where deptno = 10

select e_no, e_name from emp

select
         point_nu
 from (
            select point_nu from t_giftpoit
            where name_vc = '��ȭƼ��'
         )
         
select
         mem.name_vc, mem.point_nu, point.point_nu
 from t_giftmem mem,
        (select point_nu from t_giftpoint
         where name_vc = '��ȭƼ��'
        )point
where mem.point_nu >= point.point_nu

--�츮ȸ�翡 �ٹ��ϴ� ����߿��� �˷����� �޿��� ���� �޴� ����� �̸��� �޿��� ����ϴ� sql���� �ۼ��Ͻÿ�

select * from emp

select ename, sal from emp
where ename = 'ALLEN'

select ename, sal from emp

ALLEN�� SAL = 1600

select ename, sal from emp
where sal > 1600

select ename, sal from emp
where (
            select sal from emp
            where ename = 'ALLEN'
          ) < sal




-- �Ʒ� ������ from�� �Ʒ��� ������ �ζ��κ��̴�.
select point_nu from t_giftpoint
where name_vc = '��ȭƼ��'


select * from temp

select * from tdept

=======
�������� 
where(and, or, exist, any, ...)�� �Ʒ� select(������)
�������� ���� select���� �÷��� ���������� ����� �� ����.
���� ������ �ƴ϶� ���� ������ �־��� ��


�ζ��κ�
from�� �Ʒ� select(����)
���տ� ���� select���� �÷����� ���������� ����� �� �ִ�.
from�� �Ʒ� ������ 2�� �̻� ���� ���, ����� ���� ���̴� �������� ����� �� �ִ�. - ���� ���� ���� �� �ִ�.


���������� �ζ��κ��� ������ - select��



�̸� - t_gifmem
��������Ʈ - t_giftmem, point_nu
��ȭƼ�� - t_giftpoint, point_nu

                 ����                     /               ��������Ʈ              /                 ��������Ʈ                    /             �ܿ�����Ʈ
                ȸ��                                          ȸ��                                          ��ǰ                             ȸ��.����Ʈ - ��ǰ.����Ʈ
                
                
create view v_emp1(e_ne, e_name)
as select empno, ename
     from emp
    where deptno = 10

select e_no, e_name from emp

select
         point_nu
 from (
            select point_nu from t_giftpoit
            where name_vc = '��ȭƼ��'
         )
         
select
         mem.name_vc, mem.point_nu, point.point_nu
 from t_giftmem mem,
        (select point_nu from t_giftpoint
         where name_vc = '��ȭƼ��'
        )point
where mem.point_nu >= point.point_nu

--�츮ȸ�翡 �ٹ��ϴ� ����߿��� �˷����� �޿��� ���� �޴� ����� �̸��� �޿��� ����ϴ� sql���� �ۼ��Ͻÿ�

select * from emp

select ename, sal from emp
where ename = 'ALLEN'

select ename, sal from emp

ALLEN�� SAL = 1600

select ename, sal from emp
where sal > 1600

select ename, sal from emp
where (
            select sal from emp
            where ename = 'ALLEN'
          ) < sal




-- �Ʒ� ������ from�� �Ʒ��� ������ �ζ��κ��̴�.
select point_nu from t_giftpoint
where name_vc = '��ȭƼ��'


select * from temp

select * from tdept

>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
select * from tcom