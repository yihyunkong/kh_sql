1.

alter table scott.member
add (mem_address varchar2(100));

2.



3.

table


4.

-- ��¥ ������ ���ڿ��� �ٲٱ�
select
         to_char('20/10/13') -- ���� Ÿ�� 
        ,to_date('20/10/13') + 1 -- ��¥ Ÿ��
        ,to_char(to_date('20/10/13'), 'yyyy-mm-dd')
 from dual
 
 
5.

select 
         to_char(to_date('20/10/13'), 'yyyy�� mm�� dd��')
 from dual 
 
select 
            to_char(to_date('190505'), 'yyyy') || '��'
         || to_char(to_date('190505'), 'mm') || '��'
         || to_char(to_date('190505'), 'dd') || '��'
 from dual
 
select 
         to_char(to_date('190505'), 'yyyy"��" mm"��" dd"��"')   
 from dual
 

6.

select trim(' ABC D     ') -- ���̿� �ִ� ������ �Ⱥ�����???4
        ,trim(' ABC D     ') || 'AAA'
 from dual
 

7.

select concat(concat(concat(empno, ','), concat(ename, ',')), deptno)
 from emp
 
 
8.
-- when�� then�� ���� ��ġ�� �ٲ��� �ʵ��� ���� �ľ��� ��!!!!!
select 
         merit_rating, salary
         case merit_rating
            when 'A' then salary * 0.2
            when 'B' then salary * 0.15
            when 'C' then salary * 0.1
            else 0
         end bonus
 from employee