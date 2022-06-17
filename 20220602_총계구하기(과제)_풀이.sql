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
group by rollup(indate_vc)


--------------------------------------------------------------------------------------------

select 1 from dual
union all
select 2 from dual

-- 데이터를 2배수로 복제하기 - 카타시안 곱

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

------ union all로 총계 나타내기
select indate_vc from t_orderbasket
group by indate_vc
union all
select '총계' from dual

단위테스트 

decode(rownum, 1, indate_vc, 2, '총계')


select decode(b.rno, 1, indate_vc, 2, '총계')
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        ) b
        
select decode(b.rno, 1, indate_vc, 2, '총계')
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        ) b
group by decode(b.rno, 1, indate_vc, 2, '총계')
order by decode(b.rno, 1, indate_vc, 2, '총계')
--------------------------------------------------------
sum(qty_nu * price_nu) as "상품 매출액"

select decode(b.rno, 1, indate_vc, 2, '총계') as "판매날짜"
        ,sum(qty_nu) || '개'  as "판매개수"
        ,sum(qty_nu * price_nu) || '원' as "판매가격"
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        ) b
group by decode(b.rno, 1, indate_vc, 2, '총계')
order by decode(b.rno, 1, indate_vc, 2, '총계')

---------------------------------------------------------------------------
-- 모범답안

select decode(b.rno, 1, indate_vc, 2, '총계') as "판매날짜"
        ,sum(qty_nu) || '개'  as "판매개수"
        ,sum(qty_nu * price_nu) || '원' as "판매가격"
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        ) b
group by decode(b.rno, 1, indate_vc, 2, '총계')
order by decode(b.rno, 1, indate_vc, 2, '총계')