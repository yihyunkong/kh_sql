<<<<<<< HEAD
select job, sal from emp

select dname from dept

select *
 from emp, dept

-- job�� sal�� ���� ���ϱ� 
select job, sum(sal)
 from emp, dept
group by job

--------------------------------------------------

select * from dept -- dept ���̺��� deptno��

select * from emp -- emp ���̺��� deptno�� ��ġ�� ������ 

select dept.dname -- dept ���̺��� dname �÷��� select
 from emp, dept -- emp�� dept ���̺��� 
where emp.deptno = dept.deptno -- emp ���̺��� deptno�� dept ���̺��� deptno�� ���� �÷��� ��

select dept.dname
 from emp, dept
where emp.deptno = dept.deptno
group by dept.dname
union all
select '�Ѱ�' from dual

select dept.dname
        ,sum(decode(job, 'CLERK', sal)) clerk
 from emp, dept
where emp.deptno = dept.deptno
group by dept.dname

select deptno
        ,sum(decode(job, 'CLERK', sal)) clerk
        ,sum(decode(job, 'MANAGER', sal)) manager
        ,sum(decode(job, 'CLERK', null, 'MANAGER', null, sal)) etc
        ,sum(sal)
 from emp
group by deptno


select dept.dname
        ,sum(decode(job, 'CLERK', sal)) clerk
        ,sum(decode(job, 'MANAGER', sal)) manager
        ,sum(decode(job, 'CLERK', null, 'MANAGER', null, sal)) etc
        ,sum(sal) dept_sal
 from emp, dept
where emp.deptno = dept.deptno
group by dept.dname


select 
         decode(b.rno, '1', a.dname, '�Ѱ�')
         ,sum(clerk) clerk
         ,sum(manager) manager
         ,sum(etc) etc
         ,sum(dept_sal) dept_sal
 from (
          select dept.dname
                  ,sum(decode(job, 'CLERK', sal)) clerk
                  ,sum(decode(job, 'MANAGER', sal)) manager
                  ,sum(decode(job, 'CLERK', null, 'MANAGER', null, sal)) etc
                  ,sum(sal) dept_sal
           from emp, dept
         where emp.deptno = dept.deptno
         group by dept.dname
         ) a,
         (
          select rownum rno from dept
          where rownum < 3
         ) b
group by decode(b.rno, '1', a.dname, '�Ѱ�')
order by decode(b.rno, '1', a.dname, '�Ѱ�')

-----------------------------------------------------------------------------

sum(qty_nu * price_nu) as "��ǰ �����"

select decode(b.rno, 1, indate_vc, 2, '�Ѱ�') as "�Ǹų�¥"
        ,sum(qty_nu) || '��'  as "�ǸŰ���"
        ,sum(qty_nu * price_nu) || '��' as "�ǸŰ���"
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        ) b
group by decode(b.rno, 1, indate_vc, 2, '�Ѱ�')
=======
select job, sal from emp

select dname from dept

select *
 from emp, dept

-- job�� sal�� ���� ���ϱ� 
select job, sum(sal)
 from emp, dept
group by job

--------------------------------------------------

select * from dept -- dept ���̺��� deptno��

select * from emp -- emp ���̺��� deptno�� ��ġ�� ������ 

select dept.dname -- dept ���̺��� dname �÷��� select
 from emp, dept -- emp�� dept ���̺��� 
where emp.deptno = dept.deptno -- emp ���̺��� deptno�� dept ���̺��� deptno�� ���� �÷��� ��

select dept.dname
 from emp, dept
where emp.deptno = dept.deptno
group by dept.dname
union all
select '�Ѱ�' from dual

select dept.dname
        ,sum(decode(job, 'CLERK', sal)) clerk
 from emp, dept
where emp.deptno = dept.deptno
group by dept.dname

select deptno
        ,sum(decode(job, 'CLERK', sal)) clerk
        ,sum(decode(job, 'MANAGER', sal)) manager
        ,sum(decode(job, 'CLERK', null, 'MANAGER', null, sal)) etc
        ,sum(sal)
 from emp
group by deptno


select dept.dname
        ,sum(decode(job, 'CLERK', sal)) clerk
        ,sum(decode(job, 'MANAGER', sal)) manager
        ,sum(decode(job, 'CLERK', null, 'MANAGER', null, sal)) etc
        ,sum(sal) dept_sal
 from emp, dept
where emp.deptno = dept.deptno
group by dept.dname


select 
         decode(b.rno, '1', a.dname, '�Ѱ�')
         ,sum(clerk) clerk
         ,sum(manager) manager
         ,sum(etc) etc
         ,sum(dept_sal) dept_sal
 from (
          select dept.dname
                  ,sum(decode(job, 'CLERK', sal)) clerk
                  ,sum(decode(job, 'MANAGER', sal)) manager
                  ,sum(decode(job, 'CLERK', null, 'MANAGER', null, sal)) etc
                  ,sum(sal) dept_sal
           from emp, dept
         where emp.deptno = dept.deptno
         group by dept.dname
         ) a,
         (
          select rownum rno from dept
          where rownum < 3
         ) b
group by decode(b.rno, '1', a.dname, '�Ѱ�')
order by decode(b.rno, '1', a.dname, '�Ѱ�')

-----------------------------------------------------------------------------

sum(qty_nu * price_nu) as "��ǰ �����"

select decode(b.rno, 1, indate_vc, 2, '�Ѱ�') as "�Ǹų�¥"
        ,sum(qty_nu) || '��'  as "�ǸŰ���"
        ,sum(qty_nu * price_nu) || '��' as "�ǸŰ���"
 from t_orderbasket,
        (
         select rownum rno from dept
         where rownum < 3
        ) b
group by decode(b.rno, 1, indate_vc, 2, '�Ѱ�')
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
order by "�Ǹų�¥"