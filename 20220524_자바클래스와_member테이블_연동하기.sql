select * from member

�α����� ����
�ƴ� ȸ�������� ����?

ȸ������ �� ���̵� �ߺ��˻� �������� �ۼ��غ���

insert MEM_ID, MEM_PW, MEM_NAME

select count(mem_id)
 from member
where mem_id =:x

select 1 from member
where mem_id = 'apple'

-- ���������� where�� �Ʒ� select���� ���Ѵ�. 
-- �ζ��κ�� from�� �Ʒ� select���� ���Ѵ�. 

-- ��������
select 1
 from dual
where exists (select mem_name
                     from member
                   where mem_id = 'apple')
                   
select 1
 from dual
where exists (select mem_name
                     from member
                   where mem_id = 'apple5')
                                      
                 
select 1, NVL(1, 0)
 from dual
where exists (select mem_name, NVL(1, 0)
                     from member
                   where mem_id = 'apple5')

>>

select NVL(hobby, '����') from temp


select NVL((
                select 1
                 from dual
                where exists (select mem_name
                                     from member
                                   where mem_id = 'apple1')
                ), 0)
 from dual
 
 SELECT * FROm member