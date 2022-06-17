<<<<<<< HEAD
select count(zipcode) from zipcode_t

select * from zipcode_t

select * from zipcode_t
where zipcode = '151777'

select *
 from zipcode_t
where aptname like '인헌%'

select count(*) as "우편번호 전체 조회수"
        ,count(uid_no)
        ,count(ri)
 from zipcode_t
 
select empno, ename
 from emp
where ename like '%'||'S'||'%'

select empno, ename
 from emp
where ename like 'S'||'%'

select empno, ename
 from emp
where ename like '%'||'S'

-- 해당 주소 검색하기

select 
         address, zipcode
 from zipcode_t
where dong like '%'||'당산'||'%'

대분류 - 시 도 정도만 조회 및 중복제거 

select * from zipcode_t
where zdo = '%??'

select distinct zdo as "전체"
 from zipcode_t
order by zdo asc

update zipcode_t
set zdo ='경남'
where zdo = '경??의령군'

select '전체' zdo from dual
union all
select '경기' from dual
union all
select '서울' from dual


select '전체' zdo from dual
union all
select distinct(zdo) zdo
 from zipcode_t
order by zdo asc


select '전체' zdo from dual
union all
select zdo
 from (
           select distinct(zdo) zdo
            from zipcode_t
           order by zdo asc
         )
         
select distinct(sigu) sigu
 from zipcode_t

select '전체' sigu from dual
union all
select sigu
 from (
          select distinct(sigu) sigu
           from zipcode_t
          order by sigu asc
         )
         
select * from zipcode_t

select *
 from (
          select
                   case when zdo =: zdo then
                          case when sigu =: sigu then
                          end
                   end address
           from zipcode_t
          order by address asc
         )
where rownum = 1

select '전체' sigu from dual
union all
select sigu
 from (
          select distinct(sigu) sigu
           from zipcode_t
           WHERE zdo =: x
          order by sigu asc
         )

select '전체' dong from dual
union all
select dong
 from (
          select distinct(dong) dong
           from zipcode_t
           WHERE zdo =: x AND sigu =: y
          order by dong asc
         )                
         

select '전체' sigu from dual
union all
select sigu
 from (
          select distinct(sigu) sigu
           from zipcode_t
          where zdo =: x
          order by sigu asc
         ) 
         

select '전체' dong from dual
union all
select dong
 from (
          select distinct(dong) dong
           from zipcode_t
         where sigu =: x
          order by dong asc
         ) 
         
select distinct(zdo), sigu
 from zipcode_t
where zdo = '경기'
order by sigu asc


select '전체' dong from dual
union all
select dong
 from
        (
         select distinct(dong) dong
          from zipcode_t
         where sigu =: x 
         order by dong asc
=======
select count(zipcode) from zipcode_t

select * from zipcode_t

select * from zipcode_t
where zipcode = '151777'

select *
 from zipcode_t
where aptname like '인헌%'

select count(*) as "우편번호 전체 조회수"
        ,count(uid_no)
        ,count(ri)
 from zipcode_t
 
select empno, ename
 from emp
where ename like '%'||'S'||'%'

select empno, ename
 from emp
where ename like 'S'||'%'

select empno, ename
 from emp
where ename like '%'||'S'

-- 해당 주소 검색하기

select 
         address, zipcode
 from zipcode_t
where dong like '%'||'당산'||'%'

대분류 - 시 도 정도만 조회 및 중복제거 

select * from zipcode_t
where zdo = '%??'

select distinct zdo as "전체"
 from zipcode_t
order by zdo asc

update zipcode_t
set zdo ='경남'
where zdo = '경??의령군'

select '전체' zdo from dual
union all
select '경기' from dual
union all
select '서울' from dual


select '전체' zdo from dual
union all
select distinct(zdo) zdo
 from zipcode_t
order by zdo asc


select '전체' zdo from dual
union all
select zdo
 from (
           select distinct(zdo) zdo
            from zipcode_t
           order by zdo asc
         )
         
select distinct(sigu) sigu
 from zipcode_t

select '전체' sigu from dual
union all
select sigu
 from (
          select distinct(sigu) sigu
           from zipcode_t
          order by sigu asc
         )
         
select * from zipcode_t

select *
 from (
          select
                   case when zdo =: zdo then
                          case when sigu =: sigu then
                          end
                   end address
           from zipcode_t
          order by address asc
         )
where rownum = 1

select '전체' sigu from dual
union all
select sigu
 from (
          select distinct(sigu) sigu
           from zipcode_t
           WHERE zdo =: x
          order by sigu asc
         )

select '전체' dong from dual
union all
select dong
 from (
          select distinct(dong) dong
           from zipcode_t
           WHERE zdo =: x AND sigu =: y
          order by dong asc
         )                
         

select '전체' sigu from dual
union all
select sigu
 from (
          select distinct(sigu) sigu
           from zipcode_t
          where zdo =: x
          order by sigu asc
         ) 
         

select '전체' dong from dual
union all
select dong
 from (
          select distinct(dong) dong
           from zipcode_t
         where sigu =: x
          order by dong asc
         ) 
         
select distinct(zdo), sigu
 from zipcode_t
where zdo = '경기'
order by sigu asc


select '전체' dong from dual
union all
select dong
 from
        (
         select distinct(dong) dong
          from zipcode_t
         where sigu =: x 
         order by dong asc
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
        )