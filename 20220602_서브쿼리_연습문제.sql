<<<<<<< HEAD
서브쿼리 연습문제

4.tcom에 연봉 외에 커미션을 받는 직원의 사번이 보관되어 있다.
이 정보를 서브쿼리로 select하여 부서 명칭별로 커미션을 받는
인원수를 세는 문장을 만들어 보시오.


1.temp에서 연봉이 가장 많은 직원의 row를 찾아서 이 금액과 동일한 금액을
받는 직원의 사번과 성명을 출력하시오.

select * from temp

select emp_name, salary from temp
order by salary desc

select max(salary)
 from temp
 
select * from temp
where salary = (
                        select max(salary)
                         from temp
                       )
-------------------------------------------------
2.temp의 자료를 이용하여 salary의 평균을 구하고 이보다 큰 금액을 salary로
받는 직원의 사번과 성명, 연봉을 보여주시오.

select * from temp
 
select salary from temp

select avg(salary) from temp

select emp_id, emp_name, salary
from  temp
where (
            select avg(salary)
             from temp
          ) < salary

--------------------------------------------------------------------
3.temp의 직원 중 인천에 근무하는 직원의 사번과 성명을 읽어오는 SQL을 서브
쿼리를 이용해 만들어보시오.

select * from temp, tdept

select emp_id, emp_name
 from temp
 
select * from tdept
where area = '인천'

select dept_code from tdept

select emp_id, emp_name, dept_code
 from temp
where dept_code in(
                             select dept_code from tdept
                             where area = '인천'
                            )
                            
                            
-------------------------------------------------------------------------------
4.tcom에 연봉 외에 커미션을 받는 직원의 사번이 보관되어 있다.
이 정보를 서브쿼리로 select하여 부서 명칭별로 커미션을 받는
인원수를 세는 문장을 만들어 보시오.

select emp_id from tcom

select count(emp_id), dept_name
 from temp, tdept
where emp_id in(
                         select emp_id
                          from tcom
                        )
   and temp.dept_code = tdept.dept_code
group by dept_name
          
=======
서브쿼리 연습문제

4.tcom에 연봉 외에 커미션을 받는 직원의 사번이 보관되어 있다.
이 정보를 서브쿼리로 select하여 부서 명칭별로 커미션을 받는
인원수를 세는 문장을 만들어 보시오.


1.temp에서 연봉이 가장 많은 직원의 row를 찾아서 이 금액과 동일한 금액을
받는 직원의 사번과 성명을 출력하시오.

select * from temp

select emp_name, salary from temp
order by salary desc

select max(salary)
 from temp
 
select * from temp
where salary = (
                        select max(salary)
                         from temp
                       )
-------------------------------------------------
2.temp의 자료를 이용하여 salary의 평균을 구하고 이보다 큰 금액을 salary로
받는 직원의 사번과 성명, 연봉을 보여주시오.

select * from temp
 
select salary from temp

select avg(salary) from temp

select emp_id, emp_name, salary
from  temp
where (
            select avg(salary)
             from temp
          ) < salary

--------------------------------------------------------------------
3.temp의 직원 중 인천에 근무하는 직원의 사번과 성명을 읽어오는 SQL을 서브
쿼리를 이용해 만들어보시오.

select * from temp, tdept

select emp_id, emp_name
 from temp
 
select * from tdept
where area = '인천'

select dept_code from tdept

select emp_id, emp_name, dept_code
 from temp
where dept_code in(
                             select dept_code from tdept
                             where area = '인천'
                            )
                            
                            
-------------------------------------------------------------------------------
4.tcom에 연봉 외에 커미션을 받는 직원의 사번이 보관되어 있다.
이 정보를 서브쿼리로 select하여 부서 명칭별로 커미션을 받는
인원수를 세는 문장을 만들어 보시오.

select emp_id from tcom

select count(emp_id), dept_name
 from temp, tdept
where emp_id in(
                         select emp_id
                          from tcom
                        )
   and temp.dept_code = tdept.dept_code
group by dept_name
          
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
         