--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 16/08/2021
--@Descripción: Consultas

set linesize window

Prompt Consulta para conocer la mensualidad más cara que se ha pagado.
select vu.vivienda_id, vv.folio , u.nombre, u.ap_paterno , u.ap_materno ,
m.fecha_pago, m.importe importe_maximo
from venta_usuario vu, vivienda_en_venta vv, usuario u, mensualidad m
where vv.vivienda_id = vu.vivienda_id
and u.usuario_id = vu.usuario_id 
and vu.venta_usuario_id = m.venta_usuario_id
and m.importe = (
  select max(importe)
  from mensualidad
)
;

Prompt  Consulta para conocer las viviendas en renta con más de una clabe
select v.vivienda_id, v.direccion, vr.renta_mensual,vr.dia_deposito, 
count(*) num_clabes
from vivienda v
join vivienda_en_renta vr
on v.vivienda_id = vr.vivienda_id
join clabe_vivienda cv
on vr.vivienda_id = cv.vivienda_id
group by v.vivienda_id, v.direccion, vr.renta_mensual,vr.dia_deposito
having count(*) > 1
;

Prompt Consulta para ver todos los registros históricos desglosados
select h.historico_status_vivienda_id,h.fecha_status,s.descripcion,v.direccion
from historico_status_vivienda h
natural join status_vivienda s
join vivienda v
using (vivienda_id)
order by vivienda_id
;


Prompt Consulta para ver todas las casa en renta y, si tienen, su contrato de renta
select v.direccion,u.nombre||' '||u.ap_paterno||' '||u.ap_materno arrendador,
c.folio contrato,c2.nombre||' '||c2.ap_paterno||' '||c2.ap_materno arrendatario
from casa v, usuario u, vivienda_en_renta vr, contrato c, cliente c2
where v.usuario_id = u.usuario_id
and v.vivienda_id = vr.vivienda_id
and vr.vivienda_id = c.vivienda_id(+)
and c.usuario_id = c2.usuario_id(+)
;

Prompt Consultar todas las casas que tienen televisión satelital pero no internet

select v.vivienda_id, v.direccion, v.capacidad_max
from vivienda v
join vivienda_servicio vs
on vs.vivienda_id = v.vivienda_id
join servicio s
on vs.servicio_id = s.servicio_id
where s.nombre = 'Electricidad'
minus
select v.vivienda_id, v.direccion, v.capacidad_max
from vivienda v
join vivienda_servicio vs
on vs.vivienda_id = v.vivienda_id
join servicio s
on vs.servicio_id = s.servicio_id
where s.nombre = 'Internet'
;

Prompt Consultar los costos de las casas vacacionales y el precio promedio
select v.vivienda_id, v.direccion, vv.costo_dia, (
  select avg(costo_dia)
  from vivienda_vacacional
) as costo_promedio
from vivienda v, vivienda_vacacional vv
where v.vivienda_id = vv.vivienda_id
;

prompt Consulta para la tabla externa
select * from vivienda_vacacional_ext;

prompt Consulta para la tabla temporal
select * from vivienda_carrito_vacaciones_temp;

prompt Desplegando todos los datos de las vistas
select * from v_vivienda_vacacional;

select * from v_vivienda_renta;

select * from v_vivienda_venta;

select * from v_usuario;

prompt desplegando todos los datos con sinónimos
select * from foto;


connect ms_proy_invitado /proyecto

select * from venta;

select * from renta;

select * from vacacional;

disconnect;

