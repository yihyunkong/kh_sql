select * from t_giftmem
select * from t_giftpoint

1. 영화 티켓을 받을 수 있는 사람의 명단과 현재 가지고 있는 포인트, 영화 티켓의 포인트            
그리고 그 티켓을 사용한 후 남은 예상 포인트를 출력하시오.

select name_vc as 이름, point_nu as 보유 from t_giftmem

select name_vc as 적용, point_nu as 사용 from t_giftpoint
------------------------------------------------------------------------
select a.name_vc 이름, a.point_nu 보유 
        ,b.name_vc 적용, b.point_nu 사용
 from t_giftmem a, t_giftpoint b
where a.memcd_vc = b.giftid_vc

-------------------------------------
 키값 맟추기? - rownum?
select
          rownum, a.name_vc 이름, a.point_nu 보유
  from t_giftmem a
 
select
         rownum, b.name_vc 적용, b.point_nu 사용
 from t_giftpoint b
 
 ------------------------------------------
 select 
         a.name_vc 이름, a.point_nu 보유 -- 중복되어서 나온다..
        ,b.name_vc 적용, b.point_nu 사용
 from t_giftmem a, t_giftpoint b
where rownum = rownum
---------------------------------------------
 select 
         a.name_vc 이름, a.point_nu 보유 
        ,b.name_vc 적용, b.point_nu 사용
 from t_giftmem a, t_giftpoint b
where rownum = rownum
-----------------------------------------------
 select 
         a.name_vc 이름, a.point_nu 보유 
        ,b.name_vc 적용
 from t_giftmem a, t_giftpoint b
where rownum = rownum
-------------------------------------------------
SELECT 
            a.NAME_VC 이름, A.POINT_NU 보유
           ,b.NAME_VC 적용
  FROM T_GIFTMEM a, T_GIFTPOINT b
WHERE ROWNUM = ROWNUM;
----------------------------------------------------
select rownum, a.name_vc, a.point_nu
 from t_giftmem a
where rownum <= 4

select rownum, b. name_vc, b.point_nu
 from t_giftpoint b
where rownum <= 4

select rownum
        , "a".name_vc, "a".point_nu
        , "b".name_vc, "b".point_nu
 from t_giftmem "a", t_giftpoint "b"
where rownum <= 4
---------------------------------------------------
        
-- 남은 예상 = 보유 - 사용
