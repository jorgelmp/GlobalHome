--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 12/08/2021
--@Descripción: Definición de vistas

create or replace view v_vivienda_renta(
  direccion, ubicacion, capacidad_max, descripcion,
    renta_mensual, dia_deposito
) as select v.direccion, v.ubicacion, v.capacidad_max, v.descripcion,
    vr.renta_mensual, vr.dia_deposito
  from vivienda v, vivienda_en_renta vr
  where v.vivienda_id = vr.vivienda_id
;

create or replace view v_vivienda_venta(
  direccion, ubicacion, capacidad_max, descripcion,
    num_catastral, folio, avaluo
) as select v.direccion, v.ubicacion, v.capacidad_max, v.descripcion,
    vv.num_catastral, vv.folio, vv.avaluo
  from vivienda v, vivienda_en_venta vv
  where v.vivienda_id = vv.vivienda_id
;

create or replace view v_vivienda_vacacional(
  direccion, ubicacion, capacidad_max, descripcion,
    costo_dia, dias_max, deposito
) as select v.direccion, v.ubicacion, v.capacidad_max, v.descripcion,
    va.costo_dia, va.dias_max, va.deposito
  from vivienda v, vivienda_vacacional va
  where v.vivienda_id = va.vivienda_id
;

create or replace view v_usuario(
  nombre_usuario, nombre, ap_paterno, ap_materno, email
) as select u.nombre_usuario, u.nombre, u.ap_paterno, u.ap_materno, u.email
  from usuario u
;
