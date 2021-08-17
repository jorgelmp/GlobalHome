--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 10/08/2021
--@Descripción: Creación de usuarios y roles

prompt Proporcionar el password del usuario sys;

connect sys as sysdba

show user

prompt Creando usuario ms_proy_admin
create user ms_proy_admin identified by proyecto quota unlimited on users;

prompt Creando usuario ms_proy_invitado
create user ms_proy_invitado identified by proyecto;

prompt Creando roles
create role rol_admin;
grant create table, create procedure, create sequence,
 create session, create synonym, create view to rol_admin;

create role rol_invitado;
grant create session to rol_invitado;

prompt Asignando roles
grant rol_admin to ms_proy_admin;
grant rol_invitado to ms_proy_invitado;

prompt Listo!
disconnect;