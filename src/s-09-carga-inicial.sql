--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 14/08/2021
--@Descripción: Carga de datos

whenever sqlerror exit rollback;

Prompt Insertando registro 1

Prompt 1
insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Drenaje', 'Servicio de drenaje completamente 
funcional, tuberías de acero inoxidable recién colocadas.', empty_blob()
)
;

Prompt 2
insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Electricidad', 'Cableado óptimo en toda
  la propiedad, sin daños en la instalación eléctrica.', empty_blob()
)
;

Prompt 3
insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Agua potable', 'Agua purificada con salidas
  en todas las zonas requeridas de la casa.', empty_blob()
)
;

Prompt 4
insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Internet', 'Internet con velocidad de carga
  y descarga suficiente para realizar tareas cotidianas.', empty_blob()
)
;

Prompt 5
insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Teléfono', 'Servicio de telefonía fija.',
  empty_blob()
)
;

Prompt 6
insert into servicio (servicio_id, nombre, descripcion, icono)
values (seq_servicio.nextval, 'Televisión satelital', 'Canales adicionales
  proporcionados a través de una antena de señal satelital.', empty_blob()
)
;

Prompt 7
insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'DI', 'DISPONIBLE'
)
;

Prompt 7.1
insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'ER', 'EN RENTA'
)
;

Prompt 7.2
insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'ALQ', 'ALQUILADA'
)
;

Prompt 7.3
insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'EV', 'EN VENTA'
)
;

Prompt 7.4
insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'VEN', 'VENDIDA'
)
;

Prompt 7.5
insert into status_vivienda (status_vivienda_id, clave, descripcion)
values (seq_status_vivienda.nextval, 'IN', 'INACTIVA'
)
;

Prompt 7,6
insert into tarjeta_credito (tarjeta_credito_id, num_tarjeta, mes_expiracion,
  anio_expiracion, num_seguridad)
values (seq_tarjeta_credito.nextval, 2528907610987658, 10, 2022, 3493
)
;

Prompt 7,7
insert into tarjeta_credito (tarjeta_credito_id, num_tarjeta, mes_expiracion,
  anio_expiracion, num_seguridad)
values (seq_tarjeta_credito.nextval, 8716509248167119, 11, 2023, 1986
)
;

Prompt 7,8
insert into tarjeta_credito (tarjeta_credito_id, num_tarjeta, mes_expiracion,
  anio_expiracion, num_seguridad)
values (seq_tarjeta_credito.nextval, 5519036589172536, 12, 2022, 5112
)
;

Prompt 7,6
insert into tarjeta_credito (tarjeta_credito_id, num_tarjeta, mes_expiracion,
  anio_expiracion, num_seguridad)
values (seq_tarjeta_credito.nextval, 3252668719052398, 10, 2022, 6071
)
;

Prompt 8
insert into usuario (usuario_id, email, nombre_usuario, nombre, ap_paterno,
  ap_materno, contrasenia)
values (seq_usuario.nextval, 'HArribasM8@yahoo.com', 'HuguitoA', 'Hugo',
  'Arribas', 'Márquez', 'HAM88viv.'
)
;

Prompt 8.1
insert into usuario (usuario_id, email, nombre_usuario, nombre, ap_paterno,
  ap_materno, contrasenia)
values (seq_usuario.nextval, 'Samper_PinM@gmail.com', 'Marco55', 'Marco',
  'Pineda', 'Samper', '012SamPiM='
)
;

Prompt 8.2
insert into usuario (usuario_id, email, nombre_usuario, nombre, ap_paterno,
  ap_materno, contrasenia)
values (seq_usuario.nextval, 'Manu_RieFa@me.com', 'RieraFa1', 'Manuelita',
  'Riera', 'Fabregat', 'FabRIMAn3210.'
)
;

Prompt 8.3
insert into usuario (usuario_id, email, nombre_usuario, nombre, ap_paterno,
  ap_materno, contrasenia)
values (seq_usuario.nextval, 'PugaFiel_11@outlook.com', 'PugaFiel11', 'Fidel',
  'Puga', 'Piñol', 'PPFcasas/89'
)
;

Prompt 8.4
insert into usuario (usuario_id, email, nombre_usuario, nombre, ap_paterno,
  ap_materno, contrasenia)
values (seq_usuario.nextval, 'CarbonellNebot5@me.com', 'NebotCC', 'Nebot',
  'Conrado', 'Carbonell', 'CarbConNe123'
)
;

Prompt 8.5
insert into usuario (usuario_id, email, nombre_usuario, nombre, ap_paterno,
  ap_materno, contrasenia)
values (seq_usuario.nextval, '_RiverCarJon@gmail.com', 'RioCardJo', 'Jonathan',
  'Río', 'Cárdenas', 'RiversideJonh5'
)
;

Prompt 9
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 1, 0, 0,
  'Avenida Siempre Viva #82, Col. Almizclera, Tlaxcala, México', '23.608°N',
    '100.532°W', 6, 'Casa estilo barroco de dos plantas en muy buena ubicación.
    Vecindario muy seguro con escuelas y plazas comerciales cerca. Terreno de
    300 metros cuadrados.', 2, 1
)
;

Prompt 10
insert into historico_status_vivienda (historico_status_vivienda_id,
  fecha_status, vivienda_id, status_vivienda_id)
values (seq_historico_status_vivienda.nextval, to_date('10/06/2021', 'dd/mm/yyyy'),
  seq_vivienda.currval, 1
)
;

Prompt 10.1
insert into historico_status_vivienda (historico_status_vivienda_id,
  vivienda_id, status_vivienda_id)
values (seq_historico_status_vivienda.nextval, seq_vivienda.currval, 2
)
;

Prompt 11
insert into imagen (num_foto, vivienda_id, foto)
values (1, seq_vivienda.currval, empty_blob()
)
;

Prompt 12
insert into imagen (num_foto, vivienda_id, foto)
values (2, seq_vivienda.currval, empty_blob()
)
;

Prompt 13
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 1,
  seq_vivienda.currval
)
;

Prompt 14
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 2,
  seq_vivienda.currval
)
;

Prompt 15
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 3,
  seq_vivienda.currval
)
;

Prompt 16
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 4,
  seq_vivienda.currval
)
;

Prompt 17
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 5,
  seq_vivienda.currval
)
;

Prompt 18
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id,
  respuesta_id, vivienda_id)
values (seq_mensaje.nextval, 'Interés en su casa', 'Buenas tardes 
  señor, me gustaría comunicarme personalmente con usted para de una 
  posible renta de su casa, ya que me atrae mucho. Saludos cordiales.',
  0 ,2, null, seq_vivienda.currval
)
;

Prompt 19
insert into vivienda_en_renta (vivienda_id,renta_mensual, dia_deposito)
values (seq_vivienda.currval,15000, 1)
;

Prompt 20
insert into clabe_vivienda (clabe_vivienda_id, vivienda_id, clabe)
values (seq_clabe_vivienda.nextval, seq_vivienda.currval, 
  918265330981564278
)
;

Prompt 21
insert into clabe_vivienda (clabe_vivienda_id, vivienda_id, clabe)
values (seq_clabe_vivienda.nextval, seq_vivienda.currval, 
  278351872009825675
)
;

Prompt 23
insert into contrato (contrato_id, folio, documento, vivienda_id,
  usuario_id)
values(seq_contrato.nextval, '9807165B', empty_blob(), seq_vivienda.currval, 2
)
;

-- Validado hasta aquí

Prompt 24
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 0, 0, 1,
  'Andador Bugambilias #12, Col. Morelos, Puebla, México', '21.509°N',
    '105.982°W', 3, 'Casa humilde amueblada, ideal para un familia recién 
    formada o pareja sin compromiso. Servicios básicos.', 4, 3
)
;

Prompt 25
insert into historico_status_vivienda (historico_status_vivienda_id, 
  fecha_status, vivienda_id, status_vivienda_id)
values (seq_historico_status_vivienda.nextval, to_date('15/05/2021', 'dd/mm/yyyy'),
  seq_vivienda.currval, 1
)
;

Prompt 25.1
insert into historico_status_vivienda (historico_status_vivienda_id,
  vivienda_id, status_vivienda_id)
values (seq_historico_status_vivienda.nextval, seq_vivienda.currval, 4
)
;

Prompt 26
insert into imagen (num_foto, vivienda_id, foto)
values (1, seq_vivienda.currval, empty_blob()
)
;

Prompt 27
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 1,
  seq_vivienda.currval
)
;

Prompt 28
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 2,
  seq_vivienda.currval
)
;

Prompt 29
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 3,
  seq_vivienda.currval
)
;

Prompt 30
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id,
  respuesta_id, vivienda_id)
values (seq_mensaje.nextval, 'Me agardó su humildad', 'Hola, cómo está?
  Me gustó su casita, me la podría mostrar? Escríbame sí si. Adiós',
  1, 4, null, 2
)
;

Prompt 31
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id,
  respuesta_id, vivienda_id)
values (seq_mensaje.nextval, 'Cuándo nos vemos?', 'Buenas buenas, si quiere
  ver la casa podemos vernos el viernes en la tarde o en la noche, por ahí
  de las 7:30 me viene bien. En la dirección de la casa que viene ahí. 
  Confírmeme.', 0, 3, null, 2
)
;

Prompt 32 Alterar
update mensaje
set respuesta_id = seq_mensaje.currval
where mensaje_id = 2
;

Prompt 33
insert into vivienda_en_venta (vivienda_id, num_catastral, folio, avaluo)
values (seq_vivienda.currval,1178654902156712, '5561901273953760AG',
  empty_blob()
)
;

Prompt 34
insert into venta_usuario (venta_usuario_id, comision, clabe, vivienda_id,
  usuario_id)
values (seq_venta_usuario.nextval, 40000, 781029469281125561, 
  seq_vivienda.currval, 4
)
;

Prompt 35
insert into mensualidad (mensualidad_id, fecha_pago, importe, archivo,
  venta_usuario_id)
values (seq_mensualidad.nextval, to_date('18/06/2021', 'dd/mm/yyyy'), 50000,
  empty_blob(), seq_venta_usuario.currval
)
;

Prompt 36
insert into mensualidad (mensualidad_id, fecha_pago, importe, archivo,
  venta_usuario_id)
values (seq_mensualidad.nextval, to_date('18/07/2021', 'dd/mm/yyyy'), 40000,
  empty_blob(), seq_venta_usuario.currval
)
;

Prompt 37
insert into mensualidad (mensualidad_id, importe, archivo,
  venta_usuario_id)
values (seq_mensualidad.nextval, 50000, empty_blob(), seq_venta_usuario.currval
)
;

-- Segunda carga


Prompt 38
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 0, 1, 0,
  'Calle Miguel Hidalgo #53, Col. Centro, Veracruz, México', '21.555°N',
    '102.333°W', 4, 'Casa de dos plantas con tres habitaciones y dos baños.
    Hermoso jadín trasero donde abundan los insectos y las aves. Terraza 
    ambientada para hacer reuniones con familia y amigos. Asador incluído.',
    3, 5
)
;

Prompt 39
insert into historico_status_vivienda (historico_status_vivienda_id,
  fecha_status, vivienda_id, status_vivienda_id)
values (seq_historico_status_vivienda.nextval, to_date('22/01/2021', 'dd/mm/yyyy'),
  seq_vivienda.currval, 1
)
;

Prompt 40
insert into historico_status_vivienda (historico_status_vivienda_id,
  vivienda_id, status_vivienda_id)
values (seq_historico_status_vivienda.nextval, seq_vivienda.currval, 3
)
;

Prompt 41
insert into imagen (num_foto, vivienda_id, foto)
values (1, seq_vivienda.currval, empty_blob()
)
;

Prompt 42
insert into imagen (num_foto, vivienda_id, foto)
values (2, seq_vivienda.currval, empty_blob()
)
;

Prompt 43
insert into imagen (num_foto, vivienda_id, foto)
values (3, seq_vivienda.currval, empty_blob()
)
;

Prompt 44
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 1,
  seq_vivienda.currval
)
;

Prompt 45
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 2,
  seq_vivienda.currval
)
;

Prompt 46
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 3,
  seq_vivienda.currval
)
;

Prompt 47
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 4,
  seq_vivienda.currval
)
;

Prompt 48
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 5,
  seq_vivienda.currval
)
;

Prompt 49
insert into vivienda_servicio (vivienda_servicio_id, servicio_id, vivienda_id)
values (seq_vivienda_servicio.nextval, 6,
  seq_vivienda.currval
)
;

Prompt 50
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id,
  respuesta_id, vivienda_id)
values (seq_mensaje.nextval, 'Interés en su vivienda', 'Saludos! Mi pareja, un
  par de amigos y yo estamos interesados en pasar unos días en su casa durante
  el invierno. Nos podría dar información más detallada por favor. Gracias!',
  1, 6, null, 3
)
;

Prompt 51
insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id,
  respuesta_id, vivienda_id)
values (seq_mensaje.nextval, 'Informes', 'Hola, qué tal? Claro que sí!
  La casa también cuenta con una pequeña piscina, aunque probablemente
  en invierno no quiera usarla tanto jejeje. Está recién pintada, si gusta
  más detalles le puedo pasar mi número de teléfono.', 0, 5, null, 3
)
;

Prompt 52 Alterar
update mensaje
set respuesta_id = seq_mensaje.currval
where mensaje_id = 4
;

Prompt 53
insert into vivienda_vacacional (vivienda_id, costo_dia, dias_max, deposito)
values (seq_vivienda.currval, 400, 12, 400)
;

Prompt 54
insert into alquiler (alquiler_id, folio, periodo, vivienda_id, usuario_id,
  tarjeta_credito_id)
values (seq_alquiler.nextval, '5612897C', 7, seq_vivienda.currval, 6, 2
)
;

Prompt 55
insert into vacacional_calificacion (vacacional_calificacion_id, calificacion,
  descripcion, fecha, vivienda_id, usuario_id)
values (seq_vacacional_calificacion.nextval, 4, 'La casa es muy bonita, pero
  durante nuestra estancia se cayó un árbol cercano a la propiedad y nos
  asustó mucho. Deberían podar esos árboles.', to_date('27/12/2021', 'dd/mm/yyyy'),
  seq_vivienda.currval, 6
)
;

Prompt 56
insert into vacacional_notificacion (vacacional_notificacion_id, num_celular,
  notificacion_enviada, vivienda_id, usuario_id)
values (seq_vacacional_notificacion.nextval, 5566971413, 1, 
  seq_vivienda.currval, 6
)
;
