<<<<<<< HEAD
select * from t_worktime

select time_nu as "일한 시간" from t_worktime order by time_nu asc

--select time_nu as "일한 시간" rank() over (order by time_nu asc) '순위' from t_worktime order by time_nu as 순위 from t_worktime


-- rank() over 함수 사용
select seq_vc, workcd_vc, time_nu, Rank() over(order by time_nu asc) 순위 from t_worktime

=======
select * from t_worktime

select time_nu as "일한 시간" from t_worktime order by time_nu asc

--select time_nu as "일한 시간" rank() over (order by time_nu asc) '순위' from t_worktime order by time_nu as 순위 from t_worktime


-- rank() over 함수 사용
select seq_vc, workcd_vc, time_nu, Rank() over(order by time_nu asc) 순위 from t_worktime

>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
select seq_vc, workcd_vc, time_nu as "일한 시간", Rank() over(order by time_nu asc) 순위 from t_worktime