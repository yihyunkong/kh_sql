<<<<<<< HEAD
��� ���̺��� job�� 'CLERK'�� ����� �޿� ��,
                              'SALESMAN'�� ����� �޿� ��,
                              ������ job�� '��Ÿ'�� �ΰ� ���� ���ϱ� 

select * from emp

select job, sal from emp

if job = CLERK then
    return sum(sal)
elsif job = SALESMAN then
    return sum(sal)
elsif job != CLERK, SALESMAN the
    return sum(sal)
    
select decode('JOB', 'CLERK', SAL, null)
from emp

select job, length(job)  from emp

select sum(decode(job,'CLERK', sal, null)) from emp

select sum(decode(job,'SALESMAN', sal, null)) from emp


--

select sum(decode(job,'CLERK', sal, null)) from emp

select sum(decode(job,'SALESMAN', sal, null)) from emp

select sum( 
from emp
group by decode(job,'CLERK', sal, null), decode(job,'SALESMAN', sal, null)



select sum(sum(sal) - sum(decode(job,'CLERK', sal, null)) - sum(decode(job,'SALESMAN', sal, null))) from emp

>> ������ ��

select decode(job, 'CLERK', sal, null) as "CLERK_SUM"
        ,decode(job, 'SALESMAN', sal, null) as "SALESMAN_SUM"
        ,decode(job, 'CLERK', null, 'SALESMAN', null, sal) as "ETC_SUM"
=======
��� ���̺��� job�� 'CLERK'�� ����� �޿� ��,
                              'SALESMAN'�� ����� �޿� ��,
                              ������ job�� '��Ÿ'�� �ΰ� ���� ���ϱ� 

select * from emp

select job, sal from emp

if job = CLERK then
    return sum(sal)
elsif job = SALESMAN then
    return sum(sal)
elsif job != CLERK, SALESMAN the
    return sum(sal)
    
select decode('JOB', 'CLERK', SAL, null)
from emp

select job, length(job)  from emp

select sum(decode(job,'CLERK', sal, null)) from emp

select sum(decode(job,'SALESMAN', sal, null)) from emp


--

select sum(decode(job,'CLERK', sal, null)) from emp

select sum(decode(job,'SALESMAN', sal, null)) from emp

select sum( 
from emp
group by decode(job,'CLERK', sal, null), decode(job,'SALESMAN', sal, null)



select sum(sum(sal) - sum(decode(job,'CLERK', sal, null)) - sum(decode(job,'SALESMAN', sal, null))) from emp

>> ������ ��

select decode(job, 'CLERK', sal, null) as "CLERK_SUM"
        ,decode(job, 'SALESMAN', sal, null) as "SALESMAN_SUM"
        ,decode(job, 'CLERK', null, 'SALESMAN', null, sal) as "ETC_SUM"
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
 from emp