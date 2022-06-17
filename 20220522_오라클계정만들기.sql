create tablespace 스페이스명
datafile '<데이터파일>' size<크기>

extent management는 locally방식으로 되고 segment space management 는 auto방식으로 생성


create tablespace test_table
datafile 'C:\oracle\product\10.2.0\oradata\orcl10\kimjoy.dbf' size 100M;


create tablespace sp_ibb
datafile
'C:\app\kimjoy2\oradata\orcl11\dbIBB.dbf' size 20M;

데이터파일의 크기를 수정한다.

alter database datafile
'C:\oracle\product\10.2.0\oradata\orcl10\kimjoy.dbf' resize 10M;

select tablespace_name, file_name, autoextensible, increment_by
      ,maxbytes
  from dba_data_files
 where tablespace_name = 'TEST_TABLE'

테이블스페이스 자동확장

테이블스페이스 삭제
drop tablespace <테이블스페이스명>

create user kimjoy identified by abcd1234
default tablespace test_table
temporary tablespace temp; 


create user IBB identified by abc123
default tablespace sp_ibb;

GRANT CREATE sequence to ibb

GRANT CREATE trigger to ibb

grant create session to kimjoy  with admin option;

grant create table to kimjoy  with admin option;

grant create view to kimjoy;

alter user kimjoy  quota unlimited on test_table;

alter user ftbc2 default tablespace users quota unlimited on users;