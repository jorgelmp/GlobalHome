--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 16/08/2021
--@Descripción: Consultas

Prompt Consulta para conocer la mensualidad más cara que se ha pagado.
select vu.vivienda_id, vv.folio , u.nombre, u.ap_paterno , u.ap_materno ,
m.fecha_pago, m.importe importe_maximo
from venta_usuario vu, vivienda_en_venta vv, usuario u, mensualidad m
where vv.vivienda_id = vu.vivienda_id
and u.usuario_id = vu.usuario_id 
and vu.venta_usuario_id = m.venta_usuario_id
and m.importe = (
  select max(importe) maximo
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


