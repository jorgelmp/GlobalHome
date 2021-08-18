spool x-02.sql
select 'drop table '||table_name||' cascade constraints;' from user_tables;
spool off
@x-02.sql
!rm x-02.sql
