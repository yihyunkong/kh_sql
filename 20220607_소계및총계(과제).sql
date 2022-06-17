<<<<<<< HEAD
select * from t_orderbasket



select indate_vc as "판매날짜", gubun_vc as "물품구분", count(name_vc) as "판매개수", sum(qty_nu * price_nu) as "판매가격"
 from t_orderbasket
group by indate_vc, gubun_vc
order by indate_vc, gubun_vc asc

-- 총계
select sum(count(gubun_vc)) as " 판매개수 총계"
 from t_orderbasket
group by indate_vc, gubun_vc
=======
select * from t_orderbasket



select indate_vc as "판매날짜", gubun_vc as "물품구분", count(name_vc) as "판매개수", sum(qty_nu * price_nu) as "판매가격"
 from t_orderbasket
group by indate_vc, gubun_vc
order by indate_vc, gubun_vc asc

-- 총계
select sum(count(gubun_vc)) as " 판매개수 총계"
 from t_orderbasket
group by indate_vc, gubun_vc
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
order by indate_vc, gubun_vc