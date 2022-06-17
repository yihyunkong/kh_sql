select * from T_ORDERBASKET

select indate_vc, qty_nu, price_nu from t_orderbasket

-- ��¥ ���� ���� (group by �׷�ȭ �� ���� �����ϱ� >> ������ ����)
select indate_vc as a
 from t_orderbasket
group by indate_vc

-- ��¥ �� �ǸŰ���
select sum(qty_nu) as b
 from t_orderbasket
group by indate_vc

-- ��¥ �� �ǸŰ��� ��
select sum(b) as "�ǸŰ���"
 from (
            select sum(qty_nu) as b
             from t_orderbasket
            group by indate_vc
         )

-- ��¥ �� �Ǹűݾ�
select sum(price_nu * qty_nu) as c
 from t_orderbasket
group by indate_vc

-- ��¥ �� �Ǹűݾ� ��
select sum(c) as "�ǸŰ���"
 from (
            select sum(price_nu * qty_nu) as c
             from t_orderbasket
            group by indate_vc
         )
         

-------------------------------------------------- ������ �����Դϴ�~~!.. �ٽ� ����ϰ� �Ʒ��� ���� �������� �ۼ��߽��ϴ� !
select * from t_orderbasket

select indate_vc as "�Ǹų�¥", sum(qty_nu) as "�ǸŰ���", sum(price_nu) as "�ǸŰ���"
 from t_orderbasket
group by indate_vc

-- rollup �Լ��� �̿��Ͽ� �Ѱ� ���ϱ� (varchar2�� �Ǹų�¥�� �� �������� �ʴ°�?)
select indate_vc as "�Ǹų�¥", sum(qty_nu) as "�ǸŰ���", sum(price_nu * qty_nu) as "�ǸŰ���"
 from t_orderbasket
group by rollup(indate_vc)

-- case������ �Ѱ� ǥ���ϱ� >> ���� 
select case when indate_vc is null then '�Ѱ�'
         end,
         indate_vc as "�Ǹų�¥", sum(qty_nu) as "�ǸŰ���", sum(price_nu * qty_nu) as "�ǸŰ���"
 from t_orderbasket
group by rollup(indate_vc)

-- decode �Լ��� �Ѱ� ǥ���ϱ� >> ����
select decode(indate_vc, null, '�հ�'),
         indate_vc as "�Ǹų�¥", sum(qty_nu) as "�ǸŰ���", sum(price_nu * qty_nu) as "�ǸŰ���"
 from t_orderbasket
group by rollup(indate_vc)

select 
         decode(indate_vc, null, '�Ѱ�') as "�Ǹų�¥", sum(qty_nu) as "�ǸŰ���", sum(price_nu * qty_nu) as "�ǸŰ���"
 from t_orderbasket
group by rollup(indate_vc)

-- nvl �Լ��� (null)���� �����ϱ� >> ���� !!!!!!!!!!!!!!!!
select nvl(to_char(indate_vc), '�Ѱ�') as "�Ǹų�¥", sum(qty_nu) as "�ǸŰ���", sum(price_nu * qty_nu) as "�ǸŰ���"
 from t_orderbasket
group by rollup(indate_vc)

select nvl(indate_vc, '�Ѱ�') as "�Ǹų�¥", sum(qty_nu) as "�ǸŰ���", sum(price_nu * qty_nu) as "�ǸŰ���"
 from t_orderbasket
group by rollup(indate_vc)


--------------------------------------------------------------------------------------------

select 1 from dual
union all
select 2 from dual

-- �����͸� 2����� �����ϱ� - īŸ�þ� ��

select * from t_orderbasket,
                   (
                    select 1 rno from dual
                    union all
                    select 2 from dual
                   )
                   
                   
select *
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        )
        
select * from dept

------ union all�� �Ѱ� ��Ÿ����
select indate_vc from t_orderbasket
group by indate_vc
union all
select '�Ѱ�' from dual

�����׽�Ʈ 

decode(rownum, 1, indate_vc, 2, '�Ѱ�')


select decode(b.rno, 1, indate_vc, 2, '�Ѱ�')
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        ) b
        
select decode(b.rno, 1, indate_vc, 2, '�Ѱ�')
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        ) b
group by decode(b.rno, 1, indate_vc, 2, '�Ѱ�')
order by decode(b.rno, 1, indate_vc, 2, '�Ѱ�')
--------------------------------------------------------
sum(qty_nu * price_nu) as "��ǰ �����"

select decode(b.rno, 1, indate_vc, 2, '�Ѱ�') as "�Ǹų�¥"
        ,sum(qty_nu) || '��'  as "�ǸŰ���"
        ,sum(qty_nu * price_nu) || '��' as "�ǸŰ���"
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        ) b
group by decode(b.rno, 1, indate_vc, 2, '�Ѱ�')
order by decode(b.rno, 1, indate_vc, 2, '�Ѱ�')

---------------------------------------------------------------------------
-- ������

select decode(b.rno, 1, indate_vc, 2, '�Ѱ�') as "�Ǹų�¥"
        ,sum(qty_nu) || '��'  as "�ǸŰ���"
        ,sum(qty_nu * price_nu) || '��' as "�ǸŰ���"
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        ) b
group by decode(b.rno, 1, indate_vc, 2, '�Ѱ�')
order by decode(b.rno, 1, indate_vc, 2, '�Ѱ�')