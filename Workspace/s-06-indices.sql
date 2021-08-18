--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 12/08/2021
--@Descripción: Definición de índices

Prompt Creando índice en vivienda (capacidad_max)
create index vivienda_capacidad_max_ix on vivienda(capacidad_max);

Prompt Folio_alquiler único
create unique index alquiler_folio_iuk on alquiler(folio);

Prompt Folio_contrato único
create unique index contrato_folio_iuk on contrato(folio);

Prompt Usuario_id en mensaje no unique
create index mensaje_usuario_id_ix on mensaje(usuario_id);

Prompt nombre, ap_paterno, apa_materno en usuario, compuesto
create index usuario_nombre_apellidos_ix on usuario(nombre, ap_paterno, ap_materno);

Prompt titulo (mensaje) lower basado en funcion
create index mensualidad_fecha_pago_ix on mensualidad(extract(month from fecha_pago));