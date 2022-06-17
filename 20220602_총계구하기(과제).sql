<<<<<<< HEAD
select * from T_ORDERBASKET

select indate_vc, qty_nu, price_nu from t_orderbasket

-- 날짜 별로 묶기 (group by 그룹화 할 열을 지정하기 >> 여러개 가능)
select indate_vc as a
 from t_orderbasket
group by indate_vc

-- 날짜 별 판매개수
select sum(qty_nu) as b
 from t_orderbasket
group by indate_vc

-- 날짜 별 판매개수 합
select sum(b) as "판매개수"
 from (
            select sum(qty_nu) as b
             from t_orderbasket
            group by indate_vc
         )

-- 날짜 별 판매금액
select sum(price_nu * qty_nu) as c
 from t_orderbasket
group by indate_vc

-- 날짜 별 판매금액 합
select sum(c) as "판매가격"
 from (
            select sum(price_nu * qty_nu) as c
             from t_orderbasket
            group by indate_vc
         )
         

-------------------------------------------------- 위에는 뻘짓입니다~~!.. 다시 고민하고 아래와 같은 쿼리문을 작성했습니다 !
select * from t_orderbasket

select indate_vc as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu) as "판매가격"
 from t_orderbasket
group by indate_vc

-- rollup 함수를 이용하여 총계 구하기 (varchar2인 판매날짜는 왜 더해지지 않는가?)
select indate_vc as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu * qty_nu) as "판매가격"
 from t_orderbasket
group by rollup(indate_vc)

-- case문으로 총계 표시하기 >> 실패 
select case when indate_vc is null then '총계'
         end,
         indate_vc as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu * qty_nu) as "판매가격"
 from t_orderbasket
group by rollup(indate_vc)

-- decode 함수로 총계 표시하기 >> 실패
select decode(indate_vc, null, '합계'),
         indate_vc as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu * qty_nu) as "판매가격"
 from t_orderbasket
group by rollup(indate_vc)

select 
         decode(indate_vc, null, '총계') as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu * qty_nu) as "판매가격"
 from t_orderbasket
group by rollup(indate_vc)

-- nvl 함수로 (null)값을 변경하기 >> 성공 !!!!!!!!!!!!!!!!
select nvl(to_char(indate_vc), '총계') as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu * qty_nu) as "판매가격"
 from t_orderbasket
group by rollup(indate_vc)

select nvl(indate_vc, '총계') as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu * qty_nu) as "판매가격"
 from t_orderbasket
=======
select * from T_ORDERBASKET

select indate_vc, qty_nu, price_nu from t_orderbasket

-- 날짜 별로 묶기 (group by 그룹화 할 열을 지정하기 >> 여러개 가능)
select indate_vc as a
 from t_orderbasket
group by indate_vc

-- 날짜 별 판매개수
select sum(qty_nu) as b
 from t_orderbasket
group by indate_vc

-- 날짜 별 판매개수 합
select sum(b) as "판매개수"
 from (
            select sum(qty_nu) as b
             from t_orderbasket
            group by indate_vc
         )

-- 날짜 별 판매금액
select sum(price_nu * qty_nu) as c
 from t_orderbasket
group by indate_vc

-- 날짜 별 판매금액 합
select sum(c) as "판매가격"
 from (
            select sum(price_nu * qty_nu) as c
             from t_orderbasket
            group by indate_vc
         )
         

-------------------------------------------------- 위에는 뻘짓입니다~~!.. 다시 고민하고 아래와 같은 쿼리문을 작성했습니다 !
select * from t_orderbasket

select indate_vc as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu) as "판매가격"
 from t_orderbasket
group by indate_vc

-- rollup 함수를 이용하여 총계 구하기 (varchar2인 판매날짜는 왜 더해지지 않는가?)
select indate_vc as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu * qty_nu) as "판매가격"
 from t_orderbasket
group by rollup(indate_vc)

-- case문으로 총계 표시하기 >> 실패 
select case when indate_vc is null then '총계'
         end,
         indate_vc as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu * qty_nu) as "판매가격"
 from t_orderbasket
group by rollup(indate_vc)

-- decode 함수로 총계 표시하기 >> 실패
select decode(indate_vc, null, '합계'),
         indate_vc as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu * qty_nu) as "판매가격"
 from t_orderbasket
group by rollup(indate_vc)

select 
         decode(indate_vc, null, '총계') as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu * qty_nu) as "판매가격"
 from t_orderbasket
group by rollup(indate_vc)

-- nvl 함수로 (null)값을 변경하기 >> 성공 !!!!!!!!!!!!!!!!
select nvl(to_char(indate_vc), '총계') as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu * qty_nu) as "판매가격"
 from t_orderbasket
group by rollup(indate_vc)

select nvl(indate_vc, '총계') as "판매날짜", sum(qty_nu) as "판매개수", sum(price_nu * qty_nu) as "판매가격"
 from t_orderbasket
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
group by rollup(indate_vc)