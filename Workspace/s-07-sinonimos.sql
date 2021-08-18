--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 12/08/2021
--@Descripción: Definición de índices

Prompt creando índices públicos

create or replace public synonym cliente for ms_proy_admin.usuario;

create or replace public synonym casa for ms_proy_admin.vivienda;

create or replace public synonym foto for ms_proy_admin.imagen;


Prompt Dando permisos de lectura de usuario invitado

grant select on ms_proy_admin.usuario to ms_proy_invitado;

grant select on ms_proy_admin.vivienda to ms_proy_invitado;

grant select on ms_proy_admin.imagen to ms_proy_invitado;

grant select on ms_proy_admin.vivienda_en_renta to ms_proy_invitado;

grant select on ms_proy_admin.vivienda_en_venta to ms_proy_invitado;

grant select on ms_proy_admin.vivienda_vacacional to ms_proy_invitado;


Prompt Conectando a usuario invitado

connect ms_proy_invitado /proyecto


Prompt Creando índices privados para invitado

create or replace synonym venta for ms_proy_admin.vivienda_en_venta;

create or replace synonym renta for ms_proy_admin.vivienda_en_renta;

create or replace synonym vacacional for ms_proy_admin.vivienda_vacacional;

connect ms_proy_admin /proyecto
