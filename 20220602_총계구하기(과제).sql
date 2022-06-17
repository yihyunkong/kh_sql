<<<<<<< HEAD
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
=======
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
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
group by rollup(indate_vc)