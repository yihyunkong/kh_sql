<<<<<<< HEAD
--도전문제

월요일엔 01, 화요일엔 11, 수요일엔 21, 목요일엔, 31, 금요일엔 41, 토요일엔 51, 일요일엔 61을 붙여서 
4자리 암호를 만든다고 할 때 암호를 SELECT하는 SQL을 만들어 보시오.

select to_char(sysdate, 'DD')
        ,to_char(sysdate, 'MM')
        ,to_char(sysdate, 'DAY')
 from dual
 
select '31'||'11' 
 from dual
 
---
select to_char(sysdate, 'DD')
        ,to_char(sysdate, 'MM')
        ,to_char(sysdate, 'DAY')
        ,decode('DD', 'DAY'
        
       
 from dual


select to_char(sysdate, 'DD', 
 

>>

select
decode(to_char(sysdate, 'day'), '월요일', '01'
                                           , '화요일', '11'
                                           , '수요일', '21'
                                           , '목요일', '31'
                                           , '금요일', '41'
                                           , '토요일', '51'
                                           , '일요일', '61')
 from dual
 
select to_char(sysdate, 'DD') || decode(to_char(sysdate, 'day'), '월요일', '01'
                                                                                       , '화요일', '11'
                                                                                       , '수요일', '21'
                                                                                       , '목요일', '31'
                                                                                       , '금요일', '41'
                                                                                       , '토요일', '51'
                                                                                       , '일요일', '61')
=======
--도전문제

월요일엔 01, 화요일엔 11, 수요일엔 21, 목요일엔, 31, 금요일엔 41, 토요일엔 51, 일요일엔 61을 붙여서 
4자리 암호를 만든다고 할 때 암호를 SELECT하는 SQL을 만들어 보시오.

select to_char(sysdate, 'DD')
        ,to_char(sysdate, 'MM')
        ,to_char(sysdate, 'DAY')
 from dual
 
select '31'||'11' 
 from dual
 
---
select to_char(sysdate, 'DD')
        ,to_char(sysdate, 'MM')
        ,to_char(sysdate, 'DAY')
        ,decode('DD', 'DAY'
        
       
 from dual


select to_char(sysdate, 'DD', 
 

>>

select
decode(to_char(sysdate, 'day'), '월요일', '01'
                                           , '화요일', '11'
                                           , '수요일', '21'
                                           , '목요일', '31'
                                           , '금요일', '41'
                                           , '토요일', '51'
                                           , '일요일', '61')
 from dual
 
select to_char(sysdate, 'DD') || decode(to_char(sysdate, 'day'), '월요일', '01'
                                                                                       , '화요일', '11'
                                                                                       , '수요일', '21'
                                                                                       , '목요일', '31'
                                                                                       , '금요일', '41'
                                                                                       , '토요일', '51'
                                                                                       , '일요일', '61')
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
 from dual