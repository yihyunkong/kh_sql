<<<<<<< HEAD
select count(zipcode) from zipcode_t

select * from zipcode_t

select * from zipcode_t
where zipcode = '151777'

select *
 from zipcode_t
where aptname like '����%'

select count(*) as "�����ȣ ��ü ��ȸ��"
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

-- �ش� �ּ� �˻��ϱ�

select 
         address, zipcode
 from zipcode_t
where dong like '%'||'���'||'%'

��з� - �� �� ������ ��ȸ �� �ߺ����� 

select * from zipcode_t
where zdo = '%??'

select distinct zdo as "��ü"
 from zipcode_t
order by zdo asc

update zipcode_t
set zdo ='�泲'
where zdo = '��??�Ƿɱ�'

select '��ü' zdo from dual
union all
select '���' from dual
union all
select '����' from dual


select '��ü' zdo from dual
union all
select distinct(zdo) zdo
 from zipcode_t
order by zdo asc


select '��ü' zdo from dual
union all
select zdo
 from (
           select distinct(zdo) zdo
            from zipcode_t
           order by zdo asc
         )
         
select distinct(sigu) sigu
 from zipcode_t

select '��ü' sigu from dual
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

select '��ü' sigu from dual
union all
select sigu
 from (
          select distinct(sigu) sigu
           from zipcode_t
           WHERE zdo =: x
          order by sigu asc
         )

select '��ü' dong from dual
union all
select dong
 from (
          select distinct(dong) dong
           from zipcode_t
           WHERE zdo =: x AND sigu =: y
          order by dong asc
         )                
         

select '��ü' sigu from dual
union all
select sigu
 from (
          select distinct(sigu) sigu
           from zipcode_t
          where zdo =: x
          order by sigu asc
         ) 
         

select '��ü' dong from dual
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
where zdo = '���'
order by sigu asc


select '��ü' dong from dual
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
where aptname like '����%'

select count(*) as "�����ȣ ��ü ��ȸ��"
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

-- �ش� �ּ� �˻��ϱ�

select 
         address, zipcode
 from zipcode_t
where dong like '%'||'���'||'%'

��з� - �� �� ������ ��ȸ �� �ߺ����� 

select * from zipcode_t
where zdo = '%??'

select distinct zdo as "��ü"
 from zipcode_t
order by zdo asc

update zipcode_t
set zdo ='�泲'
where zdo = '��??�Ƿɱ�'

select '��ü' zdo from dual
union all
select '���' from dual
union all
select '����' from dual


select '��ü' zdo from dual
union all
select distinct(zdo) zdo
 from zipcode_t
order by zdo asc


select '��ü' zdo from dual
union all
select zdo
 from (
           select distinct(zdo) zdo
            from zipcode_t
           order by zdo asc
         )
         
select distinct(sigu) sigu
 from zipcode_t

select '��ü' sigu from dual
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

select '��ü' sigu from dual
union all
select sigu
 from (
          select distinct(sigu) sigu
           from zipcode_t
           WHERE zdo =: x
          order by sigu asc
         )

select '��ü' dong from dual
union all
select dong
 from (
          select distinct(dong) dong
           from zipcode_t
           WHERE zdo =: x AND sigu =: y
          order by dong asc
         )                
         

select '��ü' sigu from dual
union all
select sigu
 from (
          select distinct(sigu) sigu
           from zipcode_t
          where zdo =: x
          order by sigu asc
         ) 
         

select '��ü' dong from dual
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
where zdo = '���'
order by sigu asc


select '��ü' dong from dual
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