--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 14/08/2021
--@Descripción: Carga de datos

whenever sqlerror exit rollback;

@@intl/s-09-servicio.sql
@@intl/s-09-status-vivienda.sql
@@intl/s-09-tarjeta-credito.sql
@@intl/s-09-usuario.sql
@@intl/s-09-vivienda.sql
@@intl/s-09-historico.sql
@@intl/s-09-imagen.sql
@@intl/s-09-vivienda-servicio.sql
@@intl/s-09-mensaje.sql
@@intl/s-09-vivienda-renta.sql
@@intl/s-09-clabe.sql
@@intl/s-09-contrato.sql
@@intl/s-09-vivienda-venta.sql
@@intl/s-09-venta-usuario.sql
@@intl/s-09-mensualidad.sql
@@intl/s-09-vivienda-vacacional.sql
@@intl/s-09-alquiler.sql
@@intl/s-09-vacacional-notificacion.sql
@@intl/s-09-vacacional-calificacion.sql

commit;


