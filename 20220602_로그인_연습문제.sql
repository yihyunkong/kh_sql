<<<<<<< HEAD
temp�� �ڷḦ salary�� �з��Ͽ� 
3000���� ���ϴ� D, 3000���� �ʰ� 5000���� ���ϴ� C, 5000���� �ʰ� 7000���� ���ϴ� B, 7000���� �ʰ��� A��� ����� �з��Ͽ�,
��� �� �ο����� ����ϴ� sql���� �ۼ��Ͻÿ�.

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
���̵�� ����� ��ġ�ϸ� 1�� ��ȯ,
����� Ʋ���� 0�� ��ȯ,
���̵� �������� ������ -1�� ��ȯ

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
temp�� �ڷḦ salary�� �з��Ͽ� 
3000���� ���ϴ� D, 3000���� �ʰ� 5000���� ���ϴ� C, 5000���� �ʰ� 7000���� ���ϴ� B, 7000���� �ʰ��� A��� ����� �з��Ͽ�,
��� �� �ο����� ����ϴ� sql���� �ۼ��Ͻÿ�.

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
���̵�� ����� ��ġ�ϸ� 1�� ��ȯ,
����� Ʋ���� 0�� ��ȯ,
���̵� �������� ������ -1�� ��ȯ

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