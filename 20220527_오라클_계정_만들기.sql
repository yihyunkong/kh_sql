<<<<<<< HEAD
create tablespace ts_yihyun
datafile 'C:\app\yihyunkong\oradata\orcl\yihyun.dbf' size 100M;

select tablespace_name, file_name, autoextensible, increment_by
      ,maxbytes
  from dba_data_files
 where tablespace_name = 'TS_YIHUYN'
 
create user yihyun identified by door5467
default tablespace ts_yihyun

=======
create tablespace ts_yihyun
datafile 'C:\app\yihyunkong\oradata\orcl\yihyun.dbf' size 100M;

select tablespace_name, file_name, autoextensible, increment_by
      ,maxbytes
  from dba_data_files
 where tablespace_name = 'TS_YIHUYN'
 
create user yihyun identified by door5467
default tablespace ts_yihyun

>>>>>>> 173e97f9346cbfedc6b0657578c873a2c34ecac4
grant create session to yihyun with admin option;