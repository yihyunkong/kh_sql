SELECT deptno, dname, loc FROM dept

SELECT empno, ename, job, mgr, hiredate, comm, sal, deptno FROM emp

192.168.40.27 명진 
192.168.40.24 종국
192.168.10.5

-- 테이블에 저장된 내용 삭제하기
무결성 제약조건 (FK_DEPTNO) 때문에 삭제가 불가능하다. 
마음대로 삭제가 불가하다.  -  데이터를 안전하게 보관할 수 있다. 
인덱스가 제공된다. (색인 - 검색 속도 매우 빠르다.)
가지고 다니지 않기 때문에 잃어버릴 염려가 없다. 
노트가 비에 젖을 걱정을 안해도 된다.

DELETE FROM dept

DELETE FROM emp

rollback

dept deptno pk이고 - 기본키
emp deptno fk이다. - 외래키

SELECT 컬럼명1, 컬럼명2, ...
  FROM 집합이름(emp, dept)
 WHERE (조건절) 컬럼명 =(대입연산자 x, 같다.) 값
 
우리 회사에 근무하는 사원 중에서 이름이 SCOTT인 사람이 있니?

SELECT empno
  FROM emp
 WHERE ename = 'SCOTT'

SELECT 1 as "존재하니?(1:있다, 0:없다)"
  FROM emp
 WHERE ename = 'SCOTT'
 
 SELECT count(empno) -- count는 함수 >> 함수명(컬럼명)을 통해서 구하기
  FROM emp
 WHERE ename = 'SCOTT'

우리 회사에 근무하는 사원 중에서 이름이 SCOTT인 사람이 몇명이니?

tomato 아이디가 존재하니?
tomato 아이디가 몇개있니? 

edit member
commit

-- 아이디와 비번이 일치하는 경우에만 출력 결과를 볼 수 있다.
-- 데이터를 추가한 뒤 commit하지 않으면 실제 DB table에 반영되지 않는다.
--자신 서버를 바라볼 떄는 결과가 있는 것 처럼 보여지지만 외부에서 접근하면 볼 수 없다.

SELECT -- 단위테스트
       mem_name
  FROM member
 WHERE mem_id =:mid
   AND mem_pw =:mpw

SELECT * FROM member

query문
SQL문

INSERT INTO member(mem_no, mem_id, mem_pw, mem_name) -- 테이블에 값 추가하기
VALUES (4, 'nice', '123', '나신입')

commit
