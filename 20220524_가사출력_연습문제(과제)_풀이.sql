--인라인뷰와 UNION ALL 활용하여 풀이해 보기 + group by 사용하기
select * from t_letitbe
select mod(seq_vc, 2), words_vc from t_letitbe

1. 영어가사만 나오게 하기
select seq_vc, decode(mod(seq_vc, 2), 1, words_vc) eng_words from t_letitbe
-- decode(컬럼, 조건, 결과)

select decode(mod(seq_vc,2), 1, words_vc) eng_words from t_letitbe
where mod(seq_vc,2) = 1

2. 한글가사만 나오게 하기
select seq_vc, decode(mod(seq_vc, 2), 0, words_vc) kor_words from t_letitbe
-- decode(컬럼, 조건, 결과)

select decode(mod(seq_vc,2), 0, words_vc) kor_words from t_letitbe
where mod(seq_vc,2) = 0 
  
3. 영어가사 한글가사 번갈아 나오게 하기
select seq_vc, decode(mod(seq_vc,2),1,words_vc) eng_words, decode(mod(seq_vc,2),0,words_vc) kor_words from t_letitbe


select 
         ( select
                    decode(mod(seq_vc,2),1,words_vc) eng_words,
                    decode(mod(seq_vc,2),0,words_vc) kor_words
           from t_letitbe
           where mod(seq_vc,2) == 1, mod(seq_vc,2) == 0
         )
  from t_letitbe

/*
select decode(mod(seq_vc,2),1,words_vc) eng_words
 from t_letitbe
where mod(seq_vc,2) == 1, (
                                          select decode(mod(seq_vc,2), 0, words_vc) kor_words
                                           from t_letitbe
                                           where mod(seq_vc,2) == 0
                                       )
*/


                                        group by 
                                         
 -----------------------------------------------------------------------------------                                       
>>

select
          mod(seq_vc, 2) n -- seq_vc를 2로 나눈 나머지, 그 나머지의 집합을 n이라고 부르기로 했다. 별칭(n)은 컬럼명이 아니다.
  from t_letitbe
----------------------------------------
select 
          mod(seq_vc, 2) n
  from t_letitbe 
where  n=1 -- n은 컬럼명이 아닌 알리안스명(별칭)이기 때문에  where절에서 식별 불가능하다.
----------------------------------------
인라인 뷰를 사용하여 조건절(where)에 별칭을 사용하기 ! >> from절 밑에 select문이 오면 inline view !
select 
         n 
 from (
           select 
                    mod(seq_vc, 2) n
           from t_letitbe
         )
where  n=1
----------------------------------------
인라인 뷰를 사용하여 영어가사만 출력하기
select 
         mod(seq_vc, 2) no
        ,decode(mod(seq_vc, 2), 1, words_vc) -- mod 값이 홀수(나머지가 1)이면 words_vc로 반환된다.
 from t_letitbe
 
------------------------------------------------------------
영어 가사만 출력하기 !!
select 
         no, eng_words
 from ( -- from절 안에 select문을 사용(inline view)
           select 
                    mod(seq_vc, 2) no -- mod값을 no라고 부르기  >>  seq_vc를 2로 나눈 나머지 값
                   ,decode(mod(seq_vc, 2), 1, words_vc) eng_words -- decode값을 eng_words라고 부르기 >> mod값이 1일 때, words_vc를 반환한다.
           from t_letitbe
         )
where  no=1 -- 조건절, no가 1인 값만 반환한다.