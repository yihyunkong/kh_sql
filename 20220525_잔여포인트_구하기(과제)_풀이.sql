<<<<<<< HEAD
select * from t_giftmem
select * from t_giftpoint


1. 

select *
 from t_giftmem, t_giftpoint
 
select t_giftmem.point_nu as "보유포인트"
        ,t_giftpoint.point_nu as "적용포인트"
        ,t_giftmem.point_nu - t_giftpoint.point_nu as "잔여포인트"
 from t_giftmem, t_giftpoint
 
 왜 음수가 나오는걸까?
 내가 보유하고 있는 포인트로 가질 수 없는 상품이 있다.
 내가 보유한 포인트 >= 상품의 포인트
 
 음수는 내가 가질 수 없는 상품이다. >> 제외시켜야한다. 경우의 수에서 30가지 5*6
 문제를 천천히 꼼꼼하게 읽어서 최대한의 정보를 얻어내자 !
 
 영화티켓인것 중에서 and
6개 상품 중에서 하나만 따진다.
mem.point_nu >= point.point_nu

이름  보유포인트  적용포인트   보유포인트-적용포인트

6개 중 하나만 비교한다.

SELECT point_nu
  FROM t_giftpoint
WHERE name_vc = '영화티켓'

--------------------------------------------

select mem.name_vc as "회원이름"
        ,mem.point_nu as "보유포인트"
        ,point.point_nu as "적용포인트"
        ,mem.point_nu - point.point_nu as "잔여포인트"
 from t_giftmem mem
        ,(
            SELECT point_nu
              FROM t_giftpoint
            WHERE name_vc = '영화티켓'           
        ) point
where mem.point_nu >= point.point_nu

-------------------------------------------------


select mem.name_vc as "회원이름"
        ,mem.point_nu as "보유포인트"
        ,point.point_nu as "적용포인트"
        ,mem.point_nu - point.point_nu as "잔여포인트"
 from t_giftmem mem, t_giftpoint point
where mem.point_nu >= point.point_nu
  and point.name_vc = '영화티켓'
------------------------------------------------------------------------

select mem.name_vc as "회원이름"
        ,mem.point_nu as "보유포인트"
        ,point.point_nu as "적용포인트"
        ,mem.point_nu - point.point_nu as "잔여포인트"
 from t_giftmem mem, t_giftpoint point
where mem.point_nu >= point.point_nu
  and point.name_vc =: x
  
변수 x는 ui에서 가져온다.
------------------------------------------------------------------------------------------------------------------------------------------------
select * from t_giftmem
select * from t_giftpoint

2.

SELECT name_vc, point_nu
  FROM t_giftmem
WHERE name_vc = '김유신'

SELECT name_vc, point_nu
  FROM t_giftpoint


SELECT name_vc, point_nu
  FROM t_giftmem
WHERE name_vc = '김유신'

김유신의 포인트와 t_giftpoint를 각각 비교하기
김유신의 포인트와 같거나 작은 것 
                                                그 중 가장 큰 포인트 고르기


SELECT name_vc, point_nu
  FROM t_giftmem
WHERE name_vc =: name

SELECT point_nu
  FROM t_giftpoint
WHERE point_nu <= 50012 -- 상수 노노


SELECT point_nu
  FROM t_giftpoint
WHERE point_nu <= (
                                SELECT point_nu
                                   FROM t_giftmem
                                 WHERE name_vc = '김유신'
                                )
                                
-------------------------------------------------------------------------------
SELECT max(point_nu), name_vc -- name_vc만 출력 불가능
  FROM t_giftpoint
WHERE point_nu <= (
                                SELECT point_nu
                                   FROM t_giftmem
                                 WHERE name_vc = '김유신'
                                )
                              
>>그룹함수와 일반컬럼은 같이 사용할 수 없다.

SELECT max(point_nu), max(name_vc)
  FROM t_giftpoint
WHERE point_nu <= (
                                SELECT point_nu
                                   FROM t_giftmem
                                 WHERE name_vc = '김유신'
                                )
                                
SELECT name_vc, point_nu
  FROM t_giftpoint
WHERE point_nu = 50000

SELECT name_vc, point_nu
  FROM t_giftpoint
WHERE point_nu = (
                                SELECT max(point_nu)
                                  FROM t_giftpoint
                                WHERE point_nu <= (
                                                                SELECT point_nu
                                                                   FROM t_giftmem
                                                                 WHERE name_vc = '김유신'
                                                                )
                             )


=======
select * from t_giftmem
select * from t_giftpoint


1. 

select *
 from t_giftmem, t_giftpoint
 
select t_giftmem.point_nu as "보유포인트"
        ,t_giftpoint.point_nu as "적용포인트"
        ,t_giftmem.point_nu - t_giftpoint.point_nu as "잔여포인트"
 from t_giftmem, t_giftpoint
 
 왜 음수가 나오는걸까?
 내가 보유하고 있는 포인트로 가질 수 없는 상품이 있다.
 내가 보유한 포인트 >= 상품의 포인트
 
 음수는 내가 가질 수 없는 상품이다. >> 제외시켜야한다. 경우의 수에서 30가지 5*6
 문제를 천천히 꼼꼼하게 읽어서 최대한의 정보를 얻어내자 !
 
 영화티켓인것 중에서 and
6개 상품 중에서 하나만 따진다.
mem.point_nu >= point.point_nu

이름  보유포인트  적용포인트   보유포인트-적용포인트

6개 중 하나만 비교한다.

SELECT point_nu
  FROM t_giftpoint
WHERE name_vc = '영화티켓'

--------------------------------------------

select mem.name_vc as "회원이름"
        ,mem.point_nu as "보유포인트"
        ,point.point_nu as "적용포인트"
        ,mem.point_nu - point.point_nu as "잔여포인트"
 from t_giftmem mem
        ,(
            SELECT point_nu
              FROM t_giftpoint
            WHERE name_vc = '영화티켓'           
        ) point
where mem.point_nu >= point.point_nu

-------------------------------------------------


select mem.name_vc as "회원이름"
        ,mem.point_nu as "보유포인트"
        ,point.point_nu as "적용포인트"
        ,mem.point_nu - point.point_nu as "잔여포인트"
 from t_giftmem mem, t_giftpoint point
where mem.point_nu >= point.point_nu
  and point.name_vc = '영화티켓'
------------------------------------------------------------------------

select mem.name_vc as "회원이름"
        ,mem.point_nu as "보유포인트"
        ,point.point_nu as "적용포인트"
        ,mem.point_nu - point.point_nu as "잔여포인트"
 from t_giftmem mem, t_giftpoint point
where mem.point_nu >= point.point_nu
  and point.name_vc =: x
  
변수 x는 ui에서 가져온다.
------------------------------------------------------------------------------------------------------------------------------------------------
select * from t_giftmem
select * from t_giftpoint

2.

SELECT name_vc, point_nu
  FROM t_giftmem
WHERE name_vc = '김유신'

SELECT name_vc, point_nu
  FROM t_giftpoint


SELECT name_vc, point_nu
  FROM t_giftmem
WHERE name_vc = '김유신'

김유신의 포인트와 t_giftpoint를 각각 비교하기
김유신의 포인트와 같거나 작은 것 
                                                그 중 가장 큰 포인트 고르기


SELECT name_vc, point_nu
  FROM t_giftmem
WHERE name_vc =: name

SELECT point_nu
  FROM t_giftpoint
WHERE point_nu <= 50012 -- 상수 노노


SELECT point_nu
  FROM t_giftpoint
WHERE point_nu <= (
                                SELECT point_nu
                                   FROM t_giftmem
                                 WHERE name_vc = '김유신'
                                )
                                
-------------------------------------------------------------------------------
SELECT max(point_nu), name_vc -- name_vc만 출력 불가능
  FROM t_giftpoint
WHERE point_nu <= (
                                SELECT point_nu
                                   FROM t_giftmem
                                 WHERE name_vc = '김유신'
                                )
                              
>>그룹함수와 일반컬럼은 같이 사용할 수 없다.

SELECT max(point_nu), max(name_vc)
  FROM t_giftpoint
WHERE point_nu <= (
                                SELECT point_nu
                                   FROM t_giftmem
                                 WHERE name_vc = '김유신'
                                )
                                
SELECT name_vc, point_nu
  FROM t_giftpoint
WHERE point_nu = 50000

SELECT name_vc, point_nu
  FROM t_giftpoint
WHERE point_nu = (
                                SELECT max(point_nu)
                                  FROM t_giftpoint
                                WHERE point_nu <= (
                                                                SELECT point_nu
                                                                   FROM t_giftmem
                                                                 WHERE name_vc = '김유신'
                                                                )
                             )


>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
