select * from member

로그인이 먼저
아님 회원가입이 먼저?

회원가입 시 아이디 중복검사 쿼리문을 작성해보기

insert MEM_ID, MEM_PW, MEM_NAME

select count(mem_id)
 from member
where mem_id =:x

select 1 from member
where mem_id = 'apple'

-- 서브쿼리는 where절 아래 select문을 말한다. 
-- 인라인뷰는 from절 아래 select문을 말한다. 

-- 서브쿼리
select 1
 from dual
where exists (select mem_name
                     from member
                   where mem_id = 'apple')
                   
select 1
 from dual
where exists (select mem_name
                     from member
                   where mem_id = 'apple5')
                                      
                 
select 1, NVL(1, 0)
 from dual
where exists (select mem_name, NVL(1, 0)
                     from member
                   where mem_id = 'apple5')

>>

select NVL(hobby, '없음') from temp


select NVL((
                select 1
                 from dual
                where exists (select mem_name
                                     from member
                                   where mem_id = 'apple1')
                ), 0)
 from dual
 
 SELECT * FROm member