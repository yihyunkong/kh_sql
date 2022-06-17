<<<<<<< HEAD
temp의 자료를 salary로 분류하여 
3000만원 이하는 D, 3000만원 초과 5000만원 이하는 C, 5000만원 초과 7000만원 이하는 B, 7000만원 초과는 A라고 등급을 분류하여,
등급 별 인원수를 출력하는 sql문을 작성하시오.

select * from temp

select salary from temp

select
         case salary
            when salary <= 30000000 then 'D'
            when salary between 30000001 and 50000000 then 'C'
            when salary between 50000001 and 70000000 then 'B'
            when salary > 70000000 then 'A'
         end
 from temp


select 
         count(case when salary <= 30000000 then 'D' end) as D,
         count(case when salary between 30000001 and 50000000 then 'C' end) as C,
         count(case when salary between 50000001 and 70000000 then 'B' end) as B,
         count(case when salary > 70000000 then 'A' end) as A
 from temp

----------------------------------------------------------------------------------------------------------------
아이디와 비번이 일치하면 1을 반환,
비번이 틀리면 0을 반환,
아이디가 존재하지 않으면 -1을 반환

case
    when id == pw then '1'
    when id !== pw then '0'
    when id == is null then '-1'


select * from member

select *
 from (
            select 
                     case when mem_id =: id then
                            case when mem_pw =: pw then '1'
                            else '0'
                            end
                     else '-1'
                     end login
             from member
            order by login desc
)
where rownum = 1

=======
temp의 자료를 salary로 분류하여 
3000만원 이하는 D, 3000만원 초과 5000만원 이하는 C, 5000만원 초과 7000만원 이하는 B, 7000만원 초과는 A라고 등급을 분류하여,
등급 별 인원수를 출력하는 sql문을 작성하시오.

select * from temp

select salary from temp

select
         case salary
            when salary <= 30000000 then 'D'
            when salary between 30000001 and 50000000 then 'C'
            when salary between 50000001 and 70000000 then 'B'
            when salary > 70000000 then 'A'
         end
 from temp


select 
         count(case when salary <= 30000000 then 'D' end) as D,
         count(case when salary between 30000001 and 50000000 then 'C' end) as C,
         count(case when salary between 50000001 and 70000000 then 'B' end) as B,
         count(case when salary > 70000000 then 'A' end) as A
 from temp

----------------------------------------------------------------------------------------------------------------
아이디와 비번이 일치하면 1을 반환,
비번이 틀리면 0을 반환,
아이디가 존재하지 않으면 -1을 반환

case
    when id == pw then '1'
    when id !== pw then '0'
    when id == is null then '-1'


select * from member

select *
 from (
            select 
                     case when mem_id =: id then
                            case when mem_pw =: pw then '1'
                            else '0'
                            end
                     else '-1'
                     end login
             from member
            order by login desc
)
where rownum = 1

>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
select * from member