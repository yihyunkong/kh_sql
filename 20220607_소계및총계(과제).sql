<<<<<<< HEAD
select * from t_orderbasket



select indate_vc as "�Ǹų�¥", gubun_vc as "��ǰ����", count(name_vc) as "�ǸŰ���", sum(qty_nu * price_nu) as "�ǸŰ���"
 from t_orderbasket
group by indate_vc, gubun_vc
order by indate_vc, gubun_vc asc

-- �Ѱ�
select sum(count(gubun_vc)) as " �ǸŰ��� �Ѱ�"
 from t_orderbasket
group by indate_vc, gubun_vc
=======
select * from t_orderbasket



select indate_vc as "�Ǹų�¥", gubun_vc as "��ǰ����", count(name_vc) as "�ǸŰ���", sum(qty_nu * price_nu) as "�ǸŰ���"
 from t_orderbasket
group by indate_vc, gubun_vc
order by indate_vc, gubun_vc asc

-- �Ѱ�
select sum(count(gubun_vc)) as " �ǸŰ��� �Ѱ�"
 from t_orderbasket
group by indate_vc, gubun_vc
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
order by indate_vc, gubun_vc