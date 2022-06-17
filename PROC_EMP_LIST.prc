select * from member

���ν��� - ��ü ��� ��ȸ - oracle���� �����ϴ� object
        >> ������ ������ ��ü�� ������ �ִ� ���� �ƴϴ�.
        >> ���̺� �ִ� ������ ���ν��� �ȿ��� ó���� �� �ִ�.
        >> returnŸ���� ����.

create or replace procedure proc_dept_list (p_dept out sys_refcursor) -- out�� �̿��Ͽ� oracle �ܺη� ���� �� �ִ�.
is

begin
-- ���๮
    open p_dept
      for select deptno, dname, loc from dept;
end;

create or replace procedure proc_emp_list (p_emp out sys_refcursor)
is

begin
 open p_emp
    for select * from emp;
end;


create or replace procedure proc_sal (v_ename in varchar2, v_sal out number)-- in�� ��� (scanner ������ !) out�� ��������
is
begin
 select sal into v_sal -- into�� ���ν��� �ȿ����� ��� �����ϴ�. (~�� �ֱ�)
  from emp
where ename = v_ename;
end;

create or replace procedure proc_emp_list (p_emp out sys_refcursor)
is
begin
  open p_emp
   for  select a.empno, b.dname, a.ename
           from emp a, dept b
         where a.deptno = b.deptno;
  insert into dept(deptno, dname, loc) values(81, '����������', '����');
  commit;
end;
