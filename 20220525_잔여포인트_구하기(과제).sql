select * from t_giftmem
select * from t_giftpoint

1. ��ȭ Ƽ���� ���� �� �ִ� ����� ��ܰ� ���� ������ �ִ� ����Ʈ, ��ȭ Ƽ���� ����Ʈ            
�׸��� �� Ƽ���� ����� �� ���� ���� ����Ʈ�� ����Ͻÿ�.

select name_vc as �̸�, point_nu as ���� from t_giftmem

select name_vc as ����, point_nu as ��� from t_giftpoint
------------------------------------------------------------------------
select a.name_vc �̸�, a.point_nu ���� 
        ,b.name_vc ����, b.point_nu ���
 from t_giftmem a, t_giftpoint b
where a.memcd_vc = b.giftid_vc

-------------------------------------
 Ű�� ���߱�? - rownum?
select
          rownum, a.name_vc �̸�, a.point_nu ����
  from t_giftmem a
 
select
         rownum, b.name_vc ����, b.point_nu ���
 from t_giftpoint b
 
 ------------------------------------------
 select 
         a.name_vc �̸�, a.point_nu ���� -- �ߺ��Ǿ ���´�..
        ,b.name_vc ����, b.point_nu ���
 from t_giftmem a, t_giftpoint b
where rownum = rownum
---------------------------------------------
 select 
         a.name_vc �̸�, a.point_nu ���� 
        ,b.name_vc ����, b.point_nu ���
 from t_giftmem a, t_giftpoint b
where rownum = rownum
-----------------------------------------------
 select 
         a.name_vc �̸�, a.point_nu ���� 
        ,b.name_vc ����
 from t_giftmem a, t_giftpoint b
where rownum = rownum
-------------------------------------------------
SELECT 
            a.NAME_VC �̸�, A.POINT_NU ����
           ,b.NAME_VC ����
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
        
-- ���� ���� = ���� - ���
