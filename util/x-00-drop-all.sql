--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 10/08/2021
--@Descripción: Borrar y empezar de nuevo

prompt Borrando usuarios y roles
drop user ms_proy_admin cascade;
drop user ms_proy_invitado cascade;
drop role rol_admin;
drop role rol_invitado;
drop directory ext_dir;
prompt Listo

