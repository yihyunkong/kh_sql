<<<<<<< HEAD
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

/*
select 
         ( select
                    decode(mod(seq_vc,2),1,words_vc) eng_words,
                    decode(mod(seq_vc,2),0,words_vc) kor_words
           from t_letitbe
           where mod(seq_vc,2) == 1
         )
  from t_letitbe


select decode(mod(seq_vc,2),1,words_vc) eng_words
 from t_letitbe
where mod(seq_vc,2) = 1, (
                                          select decode(mod(seq_vc,2), 0, words_vc) kor_words
                                           from t_letitbe
                                           where mod(seq_vc,2) = 0
                                       )
*/


                                        group by 
=======
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

/*
select 
         ( select
                    decode(mod(seq_vc,2),1,words_vc) eng_words,
                    decode(mod(seq_vc,2),0,words_vc) kor_words
           from t_letitbe
           where mod(seq_vc,2) == 1
         )
  from t_letitbe


select decode(mod(seq_vc,2),1,words_vc) eng_words
 from t_letitbe
where mod(seq_vc,2) = 1, (
                                          select decode(mod(seq_vc,2), 0, words_vc) kor_words
                                           from t_letitbe
                                           where mod(seq_vc,2) = 0
                                       )
*/


                                        group by 
>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
                                         