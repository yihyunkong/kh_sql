

CREATE OR REPLACE PROCEDURE proc_emp_salupdate (p_empno IN number, msg OUT varchar2)
is 
    v_rate number; -- 할증 1.1  or  1.2
    avg_sal number; -- 평균급여담기
    my_name varchar2(30); -- 인상 대상의 이름을 담기
    my_sal number; -- 내가 받는 급여 담기
    up_sal number; -- 수정된 급여액 담기
begin
    select ename, sal into my_name, my_sal
     from emp
   where empno = p_empno; -- 1건일 때만 into문을 사용 가능함.
    select avg(sal) into avg_sal
     from emp 
   where deptno = (select deptno
                              from demp
                            where empno = p_empno);
         if my_sal > avg_sal then
          v_rate := 1.1; 
         else
          v_rate := 1.2;
         end if;
          up_sal := my_sal * v_rate;
         update emp set sal = up_sal
          where empno = p_empno;
         commit;
         msg := my_name || ' 사원의 ' || my_sal || ' 급여가 ' || up_sal || '으로 인상되었습니다.';
end;