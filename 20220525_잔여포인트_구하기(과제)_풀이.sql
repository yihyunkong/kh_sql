<<<<<<< HEAD
select * from t_giftmem
select * from t_giftpoint


1. 

select *
 from t_giftmem, t_giftpoint
 
select t_giftmem.point_nu as "��������Ʈ"
        ,t_giftpoint.point_nu as "��������Ʈ"
        ,t_giftmem.point_nu - t_giftpoint.point_nu as "�ܿ�����Ʈ"
 from t_giftmem, t_giftpoint
 
 �� ������ �����°ɱ�?
 ���� �����ϰ� �ִ� ����Ʈ�� ���� �� ���� ��ǰ�� �ִ�.
 ���� ������ ����Ʈ >= ��ǰ�� ����Ʈ
 
 ������ ���� ���� �� ���� ��ǰ�̴�. >> ���ܽ��Ѿ��Ѵ�. ����� ������ 30���� 5*6
 ������ õõ�� �Ĳ��ϰ� �о �ִ����� ������ ���� !
 
 ��ȭƼ���ΰ� �߿��� and
6�� ��ǰ �߿��� �ϳ��� ������.
mem.point_nu >= point.point_nu

�̸�  ��������Ʈ  ��������Ʈ   ��������Ʈ-��������Ʈ

6�� �� �ϳ��� ���Ѵ�.

SELECT point_nu
  FROM t_giftpoint
WHERE name_vc = '��ȭƼ��'

--------------------------------------------

select mem.name_vc as "ȸ���̸�"
        ,mem.point_nu as "��������Ʈ"
        ,point.point_nu as "��������Ʈ"
        ,mem.point_nu - point.point_nu as "�ܿ�����Ʈ"
 from t_giftmem mem
        ,(
            SELECT point_nu
              FROM t_giftpoint
            WHERE name_vc = '��ȭƼ��'           
        ) point
where mem.point_nu >= point.point_nu

-------------------------------------------------


select mem.name_vc as "ȸ���̸�"
        ,mem.point_nu as "��������Ʈ"
        ,point.point_nu as "��������Ʈ"
        ,mem.point_nu - point.point_nu as "�ܿ�����Ʈ"
 from t_giftmem mem, t_giftpoint point
where mem.point_nu >= point.point_nu
  and point.name_vc = '��ȭƼ��'
------------------------------------------------------------------------

select mem.name_vc as "ȸ���̸�"
        ,mem.point_nu as "��������Ʈ"
        ,point.point_nu as "��������Ʈ"
        ,mem.point_nu - point.point_nu as "�ܿ�����Ʈ"
 from t_giftmem mem, t_giftpoint point
where mem.point_nu >= point.point_nu
  and point.name_vc =: x
  
���� x�� ui���� �����´�.
------------------------------------------------------------------------------------------------------------------------------------------------
select * from t_giftmem
select * from t_giftpoint

2.

SELECT name_vc, point_nu
  FROM t_giftmem
WHERE name_vc = '������'

SELECT name_vc, point_nu
  FROM t_giftpoint


SELECT name_vc, point_nu
  FROM t_giftmem
WHERE name_vc = '������'

�������� ����Ʈ�� t_giftpoint�� ���� ���ϱ�
�������� ����Ʈ�� ���ų� ���� �� 
                                                �� �� ���� ū ����Ʈ ����


SELECT name_vc, point_nu
  FROM t_giftmem
WHERE name_vc =: name

SELECT point_nu
  FROM t_giftpoint
WHERE point_nu <= 50012 -- ��� ���


SELECT point_nu
  FROM t_giftpoint
WHERE point_nu <= (
                                SELECT point_nu
                                   FROM t_giftmem
                                 WHERE name_vc = '������'
                                )
                                
-------------------------------------------------------------------------------
SELECT max(point_nu), name_vc -- name_vc�� ��� �Ұ���
  FROM t_giftpoint
WHERE point_nu <= (
                                SELECT point_nu
                                   FROM t_giftmem
                                 WHERE name_vc = '������'
                                )
                              
>>�׷��Լ��� �Ϲ��÷��� ���� ����� �� ����.

SELECT max(point_nu), max(name_vc)
  FROM t_giftpoint
WHERE point_nu <= (
                                SELECT point_nu
                                   FROM t_giftmem
                                 WHERE name_vc = '������'
                                )
                                
SELECT name_vc, point_nu
  FROM t_giftpoint
WHERE point_nu = 50000

SELECT name_vc, point_nu
  FROM t_giftpoint
WHERE point_nu = (
                                SELECT max(point_nu)
                                  FROM t_giftpoint
                                WHERE point_nu <= (
                                                                SELECT point_nu
                                                                   FROM t_giftmem
                                                                 WHERE name_vc = '������'
                                                                )
                             )


=======
select * from t_giftmem
select * from t_giftpoint


1. 

select *
 from t_giftmem, t_giftpoint
 
select t_giftmem.point_nu as "��������Ʈ"
        ,t_giftpoint.point_nu as "��������Ʈ"
        ,t_giftmem.point_nu - t_giftpoint.point_nu as "�ܿ�����Ʈ"
 from t_giftmem, t_giftpoint
 
 �� ������ �����°ɱ�?
 ���� �����ϰ� �ִ� ����Ʈ�� ���� �� ���� ��ǰ�� �ִ�.
 ���� ������ ����Ʈ >= ��ǰ�� ����Ʈ
 
 ������ ���� ���� �� ���� ��ǰ�̴�. >> ���ܽ��Ѿ��Ѵ�. ����� ������ 30���� 5*6
 ������ õõ�� �Ĳ��ϰ� �о �ִ����� ������ ���� !
 
 ��ȭƼ���ΰ� �߿��� and
6�� ��ǰ �߿��� �ϳ��� ������.
mem.point_nu >= point.point_nu

�̸�  ��������Ʈ  ��������Ʈ   ��������Ʈ-��������Ʈ

6�� �� �ϳ��� ���Ѵ�.

SELECT point_nu
  FROM t_giftpoint
WHERE name_vc = '��ȭƼ��'

--------------------------------------------

select mem.name_vc as "ȸ���̸�"
        ,mem.point_nu as "��������Ʈ"
        ,point.point_nu as "��������Ʈ"
        ,mem.point_nu - point.point_nu as "�ܿ�����Ʈ"
 from t_giftmem mem
        ,(
            SELECT point_nu
              FROM t_giftpoint
            WHERE name_vc = '��ȭƼ��'           
        ) point
where mem.point_nu >= point.point_nu

-------------------------------------------------


select mem.name_vc as "ȸ���̸�"
        ,mem.point_nu as "��������Ʈ"
        ,point.point_nu as "��������Ʈ"
        ,mem.point_nu - point.point_nu as "�ܿ�����Ʈ"
 from t_giftmem mem, t_giftpoint point
where mem.point_nu >= point.point_nu
  and point.name_vc = '��ȭƼ��'
------------------------------------------------------------------------

select mem.name_vc as "ȸ���̸�"
        ,mem.point_nu as "��������Ʈ"
        ,point.point_nu as "��������Ʈ"
        ,mem.point_nu - point.point_nu as "�ܿ�����Ʈ"
 from t_giftmem mem, t_giftpoint point
where mem.point_nu >= point.point_nu
  and point.name_vc =: x
  
���� x�� ui���� �����´�.
------------------------------------------------------------------------------------------------------------------------------------------------
select * from t_giftmem
select * from t_giftpoint

2.

SELECT name_vc, point_nu
  FROM t_giftmem
WHERE name_vc = '������'

SELECT name_vc, point_nu
  FROM t_giftpoint


SELECT name_vc, point_nu
  FROM t_giftmem
WHERE name_vc = '������'

�������� ����Ʈ�� t_giftpoint�� ���� ���ϱ�
�������� ����Ʈ�� ���ų� ���� �� 
                                                �� �� ���� ū ����Ʈ ����


SELECT name_vc, point_nu
  FROM t_giftmem
WHERE name_vc =: name

SELECT point_nu
  FROM t_giftpoint
WHERE point_nu <= 50012 -- ��� ���


SELECT point_nu
  FROM t_giftpoint
WHERE point_nu <= (
                                SELECT point_nu
                                   FROM t_giftmem
                                 WHERE name_vc = '������'
                                )
                                
-------------------------------------------------------------------------------
SELECT max(point_nu), name_vc -- name_vc�� ��� �Ұ���
  FROM t_giftpoint
WHERE point_nu <= (
                                SELECT point_nu
                                   FROM t_giftmem
                                 WHERE name_vc = '������'
                                )
                              
>>�׷��Լ��� �Ϲ��÷��� ���� ����� �� ����.

SELECT max(point_nu), max(name_vc)
  FROM t_giftpoint
WHERE point_nu <= (
                                SELECT point_nu
                                   FROM t_giftmem
                                 WHERE name_vc = '������'
                                )
                                
SELECT name_vc, point_nu
  FROM t_giftpoint
WHERE point_nu = 50000

SELECT name_vc, point_nu
  FROM t_giftpoint
WHERE point_nu = (
                                SELECT max(point_nu)
                                  FROM t_giftpoint
                                WHERE point_nu <= (
                                                                SELECT point_nu
                                                                   FROM t_giftmem
                                                                 WHERE name_vc = '������'
                                                                )
                             )


>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
