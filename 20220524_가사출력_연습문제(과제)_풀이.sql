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
          mod(seq_vc, 2) n -- seq_vc�� 2�� ���� ������, �� �������� ������ n�̶�� �θ���� �ߴ�. ��Ī(n)�� �÷����� �ƴϴ�.
  from t_letitbe
----------------------------------------
select 
          mod(seq_vc, 2) n
  from t_letitbe 
where  n=1 -- n�� �÷����� �ƴ� �˸��Ƚ���(��Ī)�̱� ������  where������ �ĺ� �Ұ����ϴ�.
----------------------------------------
�ζ��� �並 ����Ͽ� ������(where)�� ��Ī�� ����ϱ� ! >> from�� �ؿ� select���� ���� inline view !
select 
         n 
 from (
           select 
                    mod(seq_vc, 2) n
           from t_letitbe
         )
where  n=1
----------------------------------------
�ζ��� �並 ����Ͽ� ����縸 ����ϱ�
select 
         mod(seq_vc, 2) no
        ,decode(mod(seq_vc, 2), 1, words_vc) -- mod ���� Ȧ��(�������� 1)�̸� words_vc�� ��ȯ�ȴ�.
 from t_letitbe
 
------------------------------------------------------------
���� ���縸 ����ϱ� !!
select 
         no, eng_words
 from ( -- from�� �ȿ� select���� ���(inline view)
           select 
                    mod(seq_vc, 2) no -- mod���� no��� �θ���  >>  seq_vc�� 2�� ���� ������ ��
                   ,decode(mod(seq_vc, 2), 1, words_vc) eng_words -- decode���� eng_words��� �θ��� >> mod���� 1�� ��, words_vc�� ��ȯ�Ѵ�.
           from t_letitbe
         )
where  no=1 -- ������, no�� 1�� ���� ��ȯ�Ѵ�.