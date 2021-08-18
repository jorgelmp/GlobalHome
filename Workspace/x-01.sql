--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 10/08/2021
--@Descripción: Utilería para eliminar todas las tablas de un usuario

spool x-02.sql
select 'drop table '||table_name||' cascade constraints;' from user_tables;
spool off
@x-02.sql
!rm x-02.sql
