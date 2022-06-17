

CREATE OR REPLACE PROCEDURE proc_emp_salupdate (p_empno IN number, msg OUT varchar2)
is 
    v_rate number; -- ���� 1.1  or  1.2
    avg_sal number; -- ��ձ޿����
    my_name varchar2(30); -- �λ� ����� �̸��� ���
    my_sal number; -- ���� �޴� �޿� ���
    up_sal number; -- ������ �޿��� ���
begin
    select ename, sal into my_name, my_sal
     from emp
   where empno = p_empno; -- 1���� ���� into���� ��� ������.
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
         msg := my_name || ' ����� ' || my_sal || ' �޿��� ' || up_sal || '���� �λ�Ǿ����ϴ�.';
end;