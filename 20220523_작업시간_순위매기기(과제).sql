<<<<<<< HEAD
select * from t_worktime

select time_nu as "���� �ð�" from t_worktime order by time_nu asc

--select time_nu as "���� �ð�" rank() over (order by time_nu asc) '����' from t_worktime order by time_nu as ���� from t_worktime


-- rank() over �Լ� ���
select seq_vc, workcd_vc, time_nu, Rank() over(order by time_nu asc) ���� from t_worktime

=======
select * from t_worktime

select time_nu as "���� �ð�" from t_worktime order by time_nu asc

--select time_nu as "���� �ð�" rank() over (order by time_nu asc) '����' from t_worktime order by time_nu as ���� from t_worktime


-- rank() over �Լ� ���
select seq_vc, workcd_vc, time_nu, Rank() over(order by time_nu asc) ���� from t_worktime

>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
select seq_vc, workcd_vc, time_nu as "���� �ð�", Rank() over(order by time_nu asc) ���� from t_worktime