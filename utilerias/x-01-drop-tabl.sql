--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 10/08/2021
--@Descripción: Utilería para eliminar todas las tablas de un usuario

spool y-01.sql
select 'drop table '||table_name||' cascade constraints;' from user_tables;
spool off
@y-01.sql
!rm y-01.sql
