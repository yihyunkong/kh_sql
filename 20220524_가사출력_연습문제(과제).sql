<<<<<<< HEAD
--�ζ��κ�� UNION ALL Ȱ���Ͽ� Ǯ���� ���� + group by ����ϱ�
select * from t_letitbe
select mod(seq_vc, 2), words_vc from t_letitbe

1. ����縸 ������ �ϱ�
select seq_vc, decode(mod(seq_vc, 2), 1, words_vc) eng_words from t_letitbe
-- decode(�÷�, ����, ���)

select decode(mod(seq_vc,2), 1, words_vc) eng_words from t_letitbe
where mod(seq_vc,2) = 1

2. �ѱ۰��縸 ������ �ϱ�
select seq_vc, decode(mod(seq_vc, 2), 0, words_vc) kor_words from t_letitbe
-- decode(�÷�, ����, ���)

select decode(mod(seq_vc,2), 0, words_vc) kor_words from t_letitbe
where mod(seq_vc,2) = 0 
  
3. ����� �ѱ۰��� ������ ������ �ϱ�
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
--�ζ��κ�� UNION ALL Ȱ���Ͽ� Ǯ���� ���� + group by ����ϱ�
select * from t_letitbe
select mod(seq_vc, 2), words_vc from t_letitbe

1. ����縸 ������ �ϱ�
select seq_vc, decode(mod(seq_vc, 2), 1, words_vc) eng_words from t_letitbe
-- decode(�÷�, ����, ���)

select decode(mod(seq_vc,2), 1, words_vc) eng_words from t_letitbe
where mod(seq_vc,2) = 1

2. �ѱ۰��縸 ������ �ϱ�
select seq_vc, decode(mod(seq_vc, 2), 0, words_vc) kor_words from t_letitbe
-- decode(�÷�, ����, ���)

select decode(mod(seq_vc,2), 0, words_vc) kor_words from t_letitbe
where mod(seq_vc,2) = 0 
  
3. ����� �ѱ۰��� ������ ������ �ϱ�
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
                                         