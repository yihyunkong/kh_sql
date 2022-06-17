select * from member

프로시저 - 전체 목록 조회 - oracle에서 제공하는 object
        >> 실제로 데이터 자체를 가지고 있는 것은 아니다.
        >> 테이블에 있는 정보를 프로시저 안에서 처리할 수 있다.
        >> return타입이 없다.

create or replace procedure proc_dept_list (p_dept out sys_refcursor) -- out을 이용하여 oracle 외부로 보낼 수 있다.
is

begin
-- 실행문
    open p_dept
      for select deptno, dname, loc from dept;
end;

create or replace procedure proc_emp_list (p_emp out sys_refcursor)
is

begin
 open p_emp
    for select * from emp;
end;


create or replace procedure proc_sal (v_ename in varchar2, v_sal out number)-- in은 듣기 (scanner 같은거 !) out은 내보내기
is
begin
 select sal into v_sal -- into는 프로시저 안에서만 사용 가능하다. (~에 넣기)
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
  insert into dept(deptno, dname, loc) values(81, '유지보수팀', '포항');
  commit;
end;
