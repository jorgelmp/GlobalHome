--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 14/08/2021
--@Descripción: Datos de la tabla MENSAJE
--@Registros: 5

insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id,
  respuesta_id, vivienda_id)
values (seq_mensaje.nextval, 'Interés en su casa', 'Buenas tardes señor, me 
  gustaría comunicarme personalmente con usted para de una posible renta de su
  casa, ya que me atrae mucho. Saludos cordiales.', 0 ,5, null, 1)
;

insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id,
  respuesta_id, vivienda_id)
values (seq_mensaje.nextval, 'Re:Interés en su casa', 'Por supuesto, venga este
  viernes a la casa y veremos.', 0 ,1, null, 1)
;

update mensaje
set leido = 1, respuesta_id = 2
where mensaje_id = 1
;

insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id,
  respuesta_id, vivienda_id)
values (seq_mensaje.nextval, 'Casa para verano', 'Buenos días, estoy intresado 
  en alquilar su casa durante mis vacaciones en México de este verano',0 ,6,
  null, 4)
;

insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id,
  respuesta_id, vivienda_id)
values (seq_mensaje.nextval, 'Venta de casa', 'Hola, estoy interesado en comprar
  su casa.', 0 ,7, null, 7)
;

insert into mensaje (mensaje_id, titulo, cuerpo, leido, usuario_id,
  respuesta_id, vivienda_id)
values (seq_mensaje.nextval, 'Pago de mensualidad', 'Buenas tardes. Me gustaría 
  adelantar el pago de mi próxima mensualidad.', 0 ,9, null, 8)
;
