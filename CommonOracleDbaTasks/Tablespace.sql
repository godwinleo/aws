create tablespace users2 datafile size 1G autoextend on maxsize 10G;


create temporary tablespace temp01;

alter tablespace users2 resize 200M;


alter tablespace users2 add datafile size 100000M autoextend on next 250m maxsize UNLIMITED;

--------------------
Setting the Default Tablespace
-----------------------

exec rdsadmin.rdsadmin_util.alter_default_tablespace(tablespace_name => 'users2');

exec rdsadmin.rdsadmin_util.alter_default_temp_tablespace(tablespace_name => 'temp01');



