--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 14/08/2021
--@Descripción: Datos de la tabla VIVIENDA
--@Registros: 12


--RENTA
--renta disponible
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max,descripcion,status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 1, 0, 0,
  'Avenida Siempre Viva #82, Col. Almizclera, Tlaxcala, México', '23.608°N',
  '100.532°W', 6, 'Casa estilo barroco de dos plantas en muy buena ubicación.
  Vecindario muy seguro con escuelas y plazas comerciales cerca. Terreno de
  300 metros cuadrados.', 1, 1)
;

--renta en renta
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 1, 0, 0, 
  'Andador Bugambilias #12, Col. Morelos, Puebla, México', '21.509°N',
  '105.982°W', 3, 'Casa humilde amueblada, ideal para un familia recién 
  formada o pareja sin compromiso. Servicios básicos.', 2, 2)
;


--renta inactiva
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 1, 0, 0,
  'Calle Miguel Hidalgo #53, Col. Centro, Veracruz, México', '21.555°N',
  '102.333°W', 4, 'Casa de dos plantas con tres habitaciones y dos baños.
  Hermoso jadín trasero donde abundan los insectos y las aves. Terraza 
  ambientada para hacer reuniones con familia y amigos. Asador incluído.',
  6, 3)
;

--VACACIONAL
--vacaional disponible
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 0, 1, 0,
  'Insurgentes Sur #34, Col. Villa Olímpica, CDMX, México', '24.811°N',
  '103.111°W', 5, 'Departamento amueblado con vistas al centro arqueológico
  Cuicuilco y a diez minutos de Six Flags. Cerca de la plaza comercial Perisur
  y del hospital de neurología. Cuatro habitaciones, tres baños y una cocina.',
  1, 2)
;

--vacaional alquilada
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 0, 1, 0,
  'Insurgentes Norte #94, Col. San Miguel, CDMX, México', '81.241°N',
  '11.311°W', 10, 'Casa de siete cuartos, cinco baños, cocina y jardín ubicada
  muy cerca del centro histórico de la Ciudad de México.',  3, 3)
;

--vacaional inactiva
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 0, 1, 0,
  'Miguel Ignacio #104, Col. Hidalgo, CDMX, México', '54.311°N','36.711°W', 5,
  'Casa de tres cuartos, seis baños, cocina y jardín ubicada muy cerca del 
  centro histórico de la Coyoacán.', 6, 1)
;


--VENTAS
--venta disponible
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 0, 0, 1,
  'José María #900, Col. Morelos, CDMX, México', '37.828°N','30.701°W', 6, 
  'Casa de ocho cuartos, seis baños, cocina y jardín ubicada muy cerca del metro
   Miguel Ángel de Quevedo.', 1, 3)
;

--venta en venta
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 0, 0, 1,
  'Agustín Iturbide #483, Col. Emperador, CDMX, México', '93.309°N','63.731°W',
  2, 'Casa de 2 cuartos, un baño, cocina y jardín ubicada muy cerca de Ciudad 
  Universitaria', 4, 2)
;


--venta en vendida
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 0, 0, 1,
  'Vicente Guerreo #44, Col. Guerrillas, CDMX, México', '86.439°N','61.44°W', 6,
  'Casa de 3 cuartos, un baño, cocina y jardín ubicada muy cerca del Bosque 
  de Chapultepec',  5, 1)
;

--venta en inactiva
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 0, 0, 1,
  'Benito Juarez #73, Col. Reforma, CDMX, México', '69.420°N',  '42.069°W', 4,
  'Casa de 2 cuartos, un baño, cocina y jardín ubicada cerca del Zócalo',6, 3)
;

--RENTA Y VACACIONAL
insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 1, 1, 0,
  'Quiñones Velasco #88, Col. Jacarandas, CDMX, México','11.073°N','50.01°W',3,
  'Casa de 3 cuartos, un baño y cocina ubicada cerca del Parque México',1, 2)
;

insert into vivienda (vivienda_id, es_renta, es_vacional, es_venta, direccion,
  latitud, longitud, capacidad_max, descripcion, status_vivienda_id, usuario_id)
values (seq_vivienda.nextval, 1, 1, 0,
  'Antonio Peña #69, Col. Líbano, CDMX, México','69.420°N','42.069°W',4,
  'Casa de 3 cuartos, un baño y cocina ubicada cerca del Parque México',1, 1)
;



