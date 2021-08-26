--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 10/08/2021
--@Descripción: Utilería para eliminar todos las objetos de un usuario

spool y-02.sql
select 'drop '||object_type||' '|| object_name || ';' from user_objects 
where object_type = 'SEQUENCE' --in ('VIEW','PACKAGE','SEQUENCE', 'PROCEDURE', 'FUNCTION', 'INDEX');
spool off
@y-02.sql
!rm y-02.sql