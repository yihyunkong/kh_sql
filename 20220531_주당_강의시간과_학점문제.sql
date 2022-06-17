<<<<<<< HEAD
CREATE TABLE LECTURE (LEC_ID VARCHAR2(05),LEC_TIME NUMBER,LEC_POINT NUMBER);

INSERT INTO LECTURE VALUES('L0001',3,3);
INSERT INTO LECTURE VALUES('L0002',3,2);
INSERT INTO LECTURE VALUES('L0003',2,3);
INSERT INTO LECTURE VALUES('L0004',2,2);
INSERT INTO LECTURE VALUES('L0005',3,1);

commit

select * from lecture


-----------------------------------------
select * from lecture
 
문제:주당 강의 시간과 학점이 같으면 '일반'을 돌려 받으려 한다
어떻게 해야 하는가?

if lec_time = lec_point then
    return '일반'
    
select lec_id, lec_time, lec_point,
decode(lec_time, lec_point, '일반') as "강의시간=학점"
 from lecture

>>
강의시간 - lec_time
학점 - lec_point

select lec_time, lec_point
 from lecture
 
select lec_time, lec_point, decode(1, 1, '일반'), decode(1, 2, '일반', null)
 from lecture
 
select lec_time, lec_point, decode(lec_time, 2, '일반'), decode(1, 2, '일반', null)
 from lecture
 
select lec_time, lec_point, decode(lec_time, lec_point, '일반'), decode(1, 2, '일반', null)
 from lecture
 
select lec_time, lec_point, decode(lec_time, lec_point, '일반과목', '기타과목') as "과목 유형"
 from lecture
------------------------------------------------------------------
문제:주당강의시간과 학점이 같은 강의의 숫자를 알고 싶다.
어떻게 해야 하는가?

select
count(decode(lec_time, lec_point, '일반')) as "강의시간=학점  >> 숫자"
 from lecture

>>

select lec_time, lec_point
 from lecture
 
select lec_id, lec_time, lec_point
 from lecture
where lec_time = lec_point

select count(2)
 from lecture
where lec_time = lec_point

select count('A')
 from lecture
where lec_time = lec_point

select count(lec_id)
 from lecture
where lec_time = lec_point

select decode(lec_time, lec_point, 'A')
 from lecture
 
select count(decode(lec_time, lec_point, 'A')), decode(lec_time, lec_point, lec_id)
 from lecture
 
select count(decode(lec_time, lec_point, 'A'))
        ,count(decode(lec_time, lec_point, lec_id))
        ,max(decode(lec_time, lec_point, lec_id))
 from lecture

-- ex)
select decode(job, 'CLERK', sal)
 from emp
 
select sum(decode(job, 'CLERK', sal))
 from emp
 
 
----------------------------------------------------------------
문제: 강의 시간과 학점이 같으면 '일반'을 리턴받은 후 정렬도
하고 싶은 경우에는 어떻게 해야 하는가?

select lec_id, lec_time, lec_point, decode(lec_time, lec_point, '일반') as "강의시간=학점" 
 from lecture
order by decode(lec_time, lec_point, '일반')

>>
select 
         lec_id
 from lecture

select 
         lec_id, decode(lec_time, lec_point, '일반', null)
 from lecture
 
select 
         lec_id, decode(lec_time, lec_point, '일반', null)
 from lecture
order by decode(lec_time, lec_point, '일반', null) desc

select 
         lec_id, decode(lec_time, lec_point, '일반', null)
 from lecture
order by decode(lec_time, lec_point, '일반', null) asc
 
-------------------------------------------------------------------
주당 강의 시간과 학점이 같으면 '일반' 과 '교양'을 리턴받은 후 
정렬도 하고 싶은 경우에는 어떻게 해야하는가?

select lec_id, lec_time, lec_point
, decode(lec_time, lec_point, '일반') as "강의시간=학점" 
, decode(lec_time, lec_point, '교양') as "강의시간=학점"
 from lecture
order by decode(lec_time, lec_point, '일반')

>>

select lec_id, lec_time, lec_point
, decode(lec_time, lec_point, '일반', '교양')
 from lecture
order by decode(lec_time, lec_point, '일반', '교양') desc

--------------------------------------------------------------------------
문제:강의 시간과 학점이 다르면 NULL이 리턴되는 대신 '특별'이라고
리턴되도록 하려면 어떻게 해야하는가?

>>

select
         lec_id, decode(lec_time, lec_point, '일반과목', '특별과목')
 from lecture

--------------------------------------------------------------------------
문제: lec_time이 크면 실험과목, lec_point가 크면 기타과목, 둘이 같으면 '일반과목'으로 돌려 받고자 한다. 
(decode는 크기 비교 불가능하다. 오직 같은 것만 비교할 수 있다.)

select * from lecture

ex)

select sign(5), sign(-600), sign(10-50), sign(10-10) from dual

(두 수를 뺀 값이 양의 정수이면 앞에 숫자가 크다 or 작다)

if lec_time > lec_point then
    return '실험과목'
elsif lec_time < lec_point then
    return '기타과목'
elsif lec_time = lec_point then
    return '일반과목'
    
select
         lec_id
        ,sign(lec_time - lec_point)
 from lecture
    
select
         lec_id
        ,decode(sign(lec_time - lec_point), 1, '기타과목', 0, '일반과목')
 from lecture

select * from lecture

>>

select
         lec_id, lec_time, lec_point
        ,decode(sign(lec_time - lec_point), 1, '실험과목'
                                                        , 0, '일반과목'
                                                        , -1, '기타과목') as "과목유형"
=======
CREATE TABLE LECTURE (LEC_ID VARCHAR2(05),LEC_TIME NUMBER,LEC_POINT NUMBER);

INSERT INTO LECTURE VALUES('L0001',3,3);
INSERT INTO LECTURE VALUES('L0002',3,2);
INSERT INTO LECTURE VALUES('L0003',2,3);
INSERT INTO LECTURE VALUES('L0004',2,2);
INSERT INTO LECTURE VALUES('L0005',3,1);

commit

select * from lecture


-----------------------------------------
select * from lecture
 
문제:주당 강의 시간과 학점이 같으면 '일반'을 돌려 받으려 한다
어떻게 해야 하는가?

if lec_time = lec_point then
    return '일반'
    
select lec_id, lec_time, lec_point,
decode(lec_time, lec_point, '일반') as "강의시간=학점"
 from lecture

>>
강의시간 - lec_time
학점 - lec_point

select lec_time, lec_point
 from lecture
 
select lec_time, lec_point, decode(1, 1, '일반'), decode(1, 2, '일반', null)
 from lecture
 
select lec_time, lec_point, decode(lec_time, 2, '일반'), decode(1, 2, '일반', null)
 from lecture
 
select lec_time, lec_point, decode(lec_time, lec_point, '일반'), decode(1, 2, '일반', null)
 from lecture
 
select lec_time, lec_point, decode(lec_time, lec_point, '일반과목', '기타과목') as "과목 유형"
 from lecture
------------------------------------------------------------------
문제:주당강의시간과 학점이 같은 강의의 숫자를 알고 싶다.
어떻게 해야 하는가?

select
count(decode(lec_time, lec_point, '일반')) as "강의시간=학점  >> 숫자"
 from lecture

>>

select lec_time, lec_point
 from lecture
 
select lec_id, lec_time, lec_point
 from lecture
where lec_time = lec_point

select count(2)
 from lecture
where lec_time = lec_point

select count('A')
 from lecture
where lec_time = lec_point

select count(lec_id)
 from lecture
where lec_time = lec_point

select decode(lec_time, lec_point, 'A')
 from lecture
 
select count(decode(lec_time, lec_point, 'A')), decode(lec_time, lec_point, lec_id)
 from lecture
 
select count(decode(lec_time, lec_point, 'A'))
        ,count(decode(lec_time, lec_point, lec_id))
        ,max(decode(lec_time, lec_point, lec_id))
 from lecture

-- ex)
select decode(job, 'CLERK', sal)
 from emp
 
select sum(decode(job, 'CLERK', sal))
 from emp
 
 
----------------------------------------------------------------
문제: 강의 시간과 학점이 같으면 '일반'을 리턴받은 후 정렬도
하고 싶은 경우에는 어떻게 해야 하는가?

select lec_id, lec_time, lec_point, decode(lec_time, lec_point, '일반') as "강의시간=학점" 
 from lecture
order by decode(lec_time, lec_point, '일반')

>>
select 
         lec_id
 from lecture

select 
         lec_id, decode(lec_time, lec_point, '일반', null)
 from lecture
 
select 
         lec_id, decode(lec_time, lec_point, '일반', null)
 from lecture
order by decode(lec_time, lec_point, '일반', null) desc

select 
         lec_id, decode(lec_time, lec_point, '일반', null)
 from lecture
order by decode(lec_time, lec_point, '일반', null) asc
 
-------------------------------------------------------------------
주당 강의 시간과 학점이 같으면 '일반' 과 '교양'을 리턴받은 후 
정렬도 하고 싶은 경우에는 어떻게 해야하는가?

select lec_id, lec_time, lec_point
, decode(lec_time, lec_point, '일반') as "강의시간=학점" 
, decode(lec_time, lec_point, '교양') as "강의시간=학점"
 from lecture
order by decode(lec_time, lec_point, '일반')

>>

select lec_id, lec_time, lec_point
, decode(lec_time, lec_point, '일반', '교양')
 from lecture
order by decode(lec_time, lec_point, '일반', '교양') desc

--------------------------------------------------------------------------
문제:강의 시간과 학점이 다르면 NULL이 리턴되는 대신 '특별'이라고
리턴되도록 하려면 어떻게 해야하는가?

>>

select
         lec_id, decode(lec_time, lec_point, '일반과목', '특별과목')
 from lecture

--------------------------------------------------------------------------
문제: lec_time이 크면 실험과목, lec_point가 크면 기타과목, 둘이 같으면 '일반과목'으로 돌려 받고자 한다. 
(decode는 크기 비교 불가능하다. 오직 같은 것만 비교할 수 있다.)

select * from lecture

ex)

select sign(5), sign(-600), sign(10-50), sign(10-10) from dual

(두 수를 뺀 값이 양의 정수이면 앞에 숫자가 크다 or 작다)

if lec_time > lec_point then
    return '실험과목'
elsif lec_time < lec_point then
    return '기타과목'
elsif lec_time = lec_point then
    return '일반과목'
    
select
         lec_id
        ,sign(lec_time - lec_point)
 from lecture
    
select
         lec_id
        ,decode(sign(lec_time - lec_point), 1, '기타과목', 0, '일반과목')
 from lecture

select * from lecture

>>

select
         lec_id, lec_time, lec_point
        ,decode(sign(lec_time - lec_point), 1, '실험과목'
                                                        , 0, '일반과목'
                                                        , -1, '기타과목') as "과목유형"
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
 from lecture