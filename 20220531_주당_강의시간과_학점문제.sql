<<<<<<< HEAD
CREATE TABLE LECTURE (LEC_ID VARCHAR2(05),LEC_TIME NUMBER,LEC_POINT NUMBER);

INSERT INTO LECTURE VALUES('L0001',3,3);
INSERT INTO LECTURE VALUES('L0002',3,2);
INSERT INTO LECTURE VALUES('L0003',2,3);
INSERT INTO LECTURE VALUES('L0004',2,2);
INSERT INTO LECTURE VALUES('L0005',3,1);

commit

select * from lecture


-----------------------------------------
select * from lecture
 
����:�ִ� ���� �ð��� ������ ������ '�Ϲ�'�� ���� ������ �Ѵ�
��� �ؾ� �ϴ°�?

if lec_time = lec_point then
    return '�Ϲ�'
    
select lec_id, lec_time, lec_point,
decode(lec_time, lec_point, '�Ϲ�') as "���ǽð�=����"
 from lecture

>>
���ǽð� - lec_time
���� - lec_point

select lec_time, lec_point
 from lecture
 
select lec_time, lec_point, decode(1, 1, '�Ϲ�'), decode(1, 2, '�Ϲ�', null)
 from lecture
 
select lec_time, lec_point, decode(lec_time, 2, '�Ϲ�'), decode(1, 2, '�Ϲ�', null)
 from lecture
 
select lec_time, lec_point, decode(lec_time, lec_point, '�Ϲ�'), decode(1, 2, '�Ϲ�', null)
 from lecture
 
select lec_time, lec_point, decode(lec_time, lec_point, '�Ϲݰ���', '��Ÿ����') as "���� ����"
 from lecture
------------------------------------------------------------------
����:�ִ簭�ǽð��� ������ ���� ������ ���ڸ� �˰� �ʹ�.
��� �ؾ� �ϴ°�?

select
count(decode(lec_time, lec_point, '�Ϲ�')) as "���ǽð�=����  >> ����"
 from lecture

>>

select lec_time, lec_point
 from lecture
 
select lec_id, lec_time, lec_point
 from lecture
where lec_time = lec_point

select count(2)
 from lecture
where lec_time = lec_point

select count('A')
 from lecture
where lec_time = lec_point

select count(lec_id)
 from lecture
where lec_time = lec_point

select decode(lec_time, lec_point, 'A')
 from lecture
 
select count(decode(lec_time, lec_point, 'A')), decode(lec_time, lec_point, lec_id)
 from lecture
 
select count(decode(lec_time, lec_point, 'A'))
        ,count(decode(lec_time, lec_point, lec_id))
        ,max(decode(lec_time, lec_point, lec_id))
 from lecture

-- ex)
select decode(job, 'CLERK', sal)
 from emp
 
select sum(decode(job, 'CLERK', sal))
 from emp
 
 
----------------------------------------------------------------
����: ���� �ð��� ������ ������ '�Ϲ�'�� ���Ϲ��� �� ���ĵ�
�ϰ� ���� ��쿡�� ��� �ؾ� �ϴ°�?

select lec_id, lec_time, lec_point, decode(lec_time, lec_point, '�Ϲ�') as "���ǽð�=����" 
 from lecture
order by decode(lec_time, lec_point, '�Ϲ�')

>>
select 
         lec_id
 from lecture

select 
         lec_id, decode(lec_time, lec_point, '�Ϲ�', null)
 from lecture
 
select 
         lec_id, decode(lec_time, lec_point, '�Ϲ�', null)
 from lecture
order by decode(lec_time, lec_point, '�Ϲ�', null) desc

select 
         lec_id, decode(lec_time, lec_point, '�Ϲ�', null)
 from lecture
order by decode(lec_time, lec_point, '�Ϲ�', null) asc
 
-------------------------------------------------------------------
�ִ� ���� �ð��� ������ ������ '�Ϲ�' �� '����'�� ���Ϲ��� �� 
���ĵ� �ϰ� ���� ��쿡�� ��� �ؾ��ϴ°�?

select lec_id, lec_time, lec_point
, decode(lec_time, lec_point, '�Ϲ�') as "���ǽð�=����" 
, decode(lec_time, lec_point, '����') as "���ǽð�=����"
 from lecture
order by decode(lec_time, lec_point, '�Ϲ�')

>>

select lec_id, lec_time, lec_point
, decode(lec_time, lec_point, '�Ϲ�', '����')
 from lecture
order by decode(lec_time, lec_point, '�Ϲ�', '����') desc

--------------------------------------------------------------------------
����:���� �ð��� ������ �ٸ��� NULL�� ���ϵǴ� ��� 'Ư��'�̶��
���ϵǵ��� �Ϸ��� ��� �ؾ��ϴ°�?

>>

select
         lec_id, decode(lec_time, lec_point, '�Ϲݰ���', 'Ư������')
 from lecture

--------------------------------------------------------------------------
����: lec_time�� ũ�� �������, lec_point�� ũ�� ��Ÿ����, ���� ������ '�Ϲݰ���'���� ���� �ް��� �Ѵ�. 
(decode�� ũ�� �� �Ұ����ϴ�. ���� ���� �͸� ���� �� �ִ�.)

select * from lecture

ex)

select sign(5), sign(-600), sign(10-50), sign(10-10) from dual

(�� ���� �� ���� ���� �����̸� �տ� ���ڰ� ũ�� or �۴�)

if lec_time > lec_point then
    return '�������'
elsif lec_time < lec_point then
    return '��Ÿ����'
elsif lec_time = lec_point then
    return '�Ϲݰ���'
    
select
         lec_id
        ,sign(lec_time - lec_point)
 from lecture
    
select
         lec_id
        ,decode(sign(lec_time - lec_point), 1, '��Ÿ����', 0, '�Ϲݰ���')
 from lecture

select * from lecture

>>

select
         lec_id, lec_time, lec_point
        ,decode(sign(lec_time - lec_point), 1, '�������'
                                                        , 0, '�Ϲݰ���'
                                                        , -1, '��Ÿ����') as "��������"
=======
CREATE TABLE LECTURE (LEC_ID VARCHAR2(05),LEC_TIME NUMBER,LEC_POINT NUMBER);

INSERT INTO LECTURE VALUES('L0001',3,3);
INSERT INTO LECTURE VALUES('L0002',3,2);
INSERT INTO LECTURE VALUES('L0003',2,3);
INSERT INTO LECTURE VALUES('L0004',2,2);
INSERT INTO LECTURE VALUES('L0005',3,1);

commit

select * from lecture


-----------------------------------------
select * from lecture
 
����:�ִ� ���� �ð��� ������ ������ '�Ϲ�'�� ���� ������ �Ѵ�
��� �ؾ� �ϴ°�?

if lec_time = lec_point then
    return '�Ϲ�'
    
select lec_id, lec_time, lec_point,
decode(lec_time, lec_point, '�Ϲ�') as "���ǽð�=����"
 from lecture

>>
���ǽð� - lec_time
���� - lec_point

select lec_time, lec_point
 from lecture
 
select lec_time, lec_point, decode(1, 1, '�Ϲ�'), decode(1, 2, '�Ϲ�', null)
 from lecture
 
select lec_time, lec_point, decode(lec_time, 2, '�Ϲ�'), decode(1, 2, '�Ϲ�', null)
 from lecture
 
select lec_time, lec_point, decode(lec_time, lec_point, '�Ϲ�'), decode(1, 2, '�Ϲ�', null)
 from lecture
 
select lec_time, lec_point, decode(lec_time, lec_point, '�Ϲݰ���', '��Ÿ����') as "���� ����"
 from lecture
------------------------------------------------------------------
����:�ִ簭�ǽð��� ������ ���� ������ ���ڸ� �˰� �ʹ�.
��� �ؾ� �ϴ°�?

select
count(decode(lec_time, lec_point, '�Ϲ�')) as "���ǽð�=����  >> ����"
 from lecture

>>

select lec_time, lec_point
 from lecture
 
select lec_id, lec_time, lec_point
 from lecture
where lec_time = lec_point

select count(2)
 from lecture
where lec_time = lec_point

select count('A')
 from lecture
where lec_time = lec_point

select count(lec_id)
 from lecture
where lec_time = lec_point

select decode(lec_time, lec_point, 'A')
 from lecture
 
select count(decode(lec_time, lec_point, 'A')), decode(lec_time, lec_point, lec_id)
 from lecture
 
select count(decode(lec_time, lec_point, 'A'))
        ,count(decode(lec_time, lec_point, lec_id))
        ,max(decode(lec_time, lec_point, lec_id))
 from lecture

-- ex)
select decode(job, 'CLERK', sal)
 from emp
 
select sum(decode(job, 'CLERK', sal))
 from emp
 
 
----------------------------------------------------------------
����: ���� �ð��� ������ ������ '�Ϲ�'�� ���Ϲ��� �� ���ĵ�
�ϰ� ���� ��쿡�� ��� �ؾ� �ϴ°�?

select lec_id, lec_time, lec_point, decode(lec_time, lec_point, '�Ϲ�') as "���ǽð�=����" 
 from lecture
order by decode(lec_time, lec_point, '�Ϲ�')

>>
select 
         lec_id
 from lecture

select 
         lec_id, decode(lec_time, lec_point, '�Ϲ�', null)
 from lecture
 
select 
         lec_id, decode(lec_time, lec_point, '�Ϲ�', null)
 from lecture
order by decode(lec_time, lec_point, '�Ϲ�', null) desc

select 
         lec_id, decode(lec_time, lec_point, '�Ϲ�', null)
 from lecture
order by decode(lec_time, lec_point, '�Ϲ�', null) asc
 
-------------------------------------------------------------------
�ִ� ���� �ð��� ������ ������ '�Ϲ�' �� '����'�� ���Ϲ��� �� 
���ĵ� �ϰ� ���� ��쿡�� ��� �ؾ��ϴ°�?

select lec_id, lec_time, lec_point
, decode(lec_time, lec_point, '�Ϲ�') as "���ǽð�=����" 
, decode(lec_time, lec_point, '����') as "���ǽð�=����"
 from lecture
order by decode(lec_time, lec_point, '�Ϲ�')

>>

select lec_id, lec_time, lec_point
, decode(lec_time, lec_point, '�Ϲ�', '����')
 from lecture
order by decode(lec_time, lec_point, '�Ϲ�', '����') desc

--------------------------------------------------------------------------
����:���� �ð��� ������ �ٸ��� NULL�� ���ϵǴ� ��� 'Ư��'�̶��
���ϵǵ��� �Ϸ��� ��� �ؾ��ϴ°�?

>>

select
         lec_id, decode(lec_time, lec_point, '�Ϲݰ���', 'Ư������')
 from lecture

--------------------------------------------------------------------------
����: lec_time�� ũ�� �������, lec_point�� ũ�� ��Ÿ����, ���� ������ '�Ϲݰ���'���� ���� �ް��� �Ѵ�. 
(decode�� ũ�� �� �Ұ����ϴ�. ���� ���� �͸� ���� �� �ִ�.)

select * from lecture

ex)

select sign(5), sign(-600), sign(10-50), sign(10-10) from dual

(�� ���� �� ���� ���� �����̸� �տ� ���ڰ� ũ�� or �۴�)

if lec_time > lec_point then
    return '�������'
elsif lec_time < lec_point then
    return '��Ÿ����'
elsif lec_time = lec_point then
    return '�Ϲݰ���'
    
select
         lec_id
        ,sign(lec_time - lec_point)
 from lecture
    
select
         lec_id
        ,decode(sign(lec_time - lec_point), 1, '��Ÿ����', 0, '�Ϲݰ���')
 from lecture

select * from lecture

>>

select
         lec_id, lec_time, lec_point
        ,decode(sign(lec_time - lec_point), 1, '�������'
                                                        , 0, '�Ϲݰ���'
                                                        , -1, '��Ÿ����') as "��������"
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
 from lecture