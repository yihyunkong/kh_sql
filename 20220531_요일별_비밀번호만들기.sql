<<<<<<< HEAD
--��������

�����Ͽ� 01, ȭ���Ͽ� 11, �����Ͽ� 21, ����Ͽ�, 31, �ݿ��Ͽ� 41, ����Ͽ� 51, �Ͽ��Ͽ� 61�� �ٿ��� 
4�ڸ� ��ȣ�� ����ٰ� �� �� ��ȣ�� SELECT�ϴ� SQL�� ����� ���ÿ�.

select to_char(sysdate, 'DD')
        ,to_char(sysdate, 'MM')
        ,to_char(sysdate, 'DAY')
 from dual
 
select '31'||'11' 
 from dual
 
---
select to_char(sysdate, 'DD')
        ,to_char(sysdate, 'MM')
        ,to_char(sysdate, 'DAY')
        ,decode('DD', 'DAY'
        
       
 from dual


select to_char(sysdate, 'DD', 
 

>>

select
decode(to_char(sysdate, 'day'), '������', '01'
                                           , 'ȭ����', '11'
                                           , '������', '21'
                                           , '�����', '31'
                                           , '�ݿ���', '41'
                                           , '�����', '51'
                                           , '�Ͽ���', '61')
 from dual
 
select to_char(sysdate, 'DD') || decode(to_char(sysdate, 'day'), '������', '01'
                                                                                       , 'ȭ����', '11'
                                                                                       , '������', '21'
                                                                                       , '�����', '31'
                                                                                       , '�ݿ���', '41'
                                                                                       , '�����', '51'
                                                                                       , '�Ͽ���', '61')
=======
--��������

�����Ͽ� 01, ȭ���Ͽ� 11, �����Ͽ� 21, ����Ͽ�, 31, �ݿ��Ͽ� 41, ����Ͽ� 51, �Ͽ��Ͽ� 61�� �ٿ��� 
4�ڸ� ��ȣ�� ����ٰ� �� �� ��ȣ�� SELECT�ϴ� SQL�� ����� ���ÿ�.

select to_char(sysdate, 'DD')
        ,to_char(sysdate, 'MM')
        ,to_char(sysdate, 'DAY')
 from dual
 
select '31'||'11' 
 from dual
 
---
select to_char(sysdate, 'DD')
        ,to_char(sysdate, 'MM')
        ,to_char(sysdate, 'DAY')
        ,decode('DD', 'DAY'
        
       
 from dual


select to_char(sysdate, 'DD', 
 

>>

select
decode(to_char(sysdate, 'day'), '������', '01'
                                           , 'ȭ����', '11'
                                           , '������', '21'
                                           , '�����', '31'
                                           , '�ݿ���', '41'
                                           , '�����', '51'
                                           , '�Ͽ���', '61')
 from dual
 
select to_char(sysdate, 'DD') || decode(to_char(sysdate, 'day'), '������', '01'
                                                                                       , 'ȭ����', '11'
                                                                                       , '������', '21'
                                                                                       , '�����', '31'
                                                                                       , '�ݿ���', '41'
                                                                                       , '�����', '51'
                                                                                       , '�Ͽ���', '61')
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
 from dual