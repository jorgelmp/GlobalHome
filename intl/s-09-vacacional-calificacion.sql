--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 14/08/2021
--@Descripción: Datos de la tabla VACACIONAL_CALIFICACION
--@Registros: 1

insert into vacacional_calificacion (vacacional_calificacion_id, calificacion,
  descripcion, fecha, vivienda_id, usuario_id)
values (seq_vacacional_calificacion.nextval, 4, 'La casa es muy bonita, pero
  durante nuestra estancia se cayó un árbol cercano a la propiedad y nos asustó
  mucho. Deberían podar esos árboles.', to_date('18/08/2021', 'dd/mm/yyyy'),
  5, 6)
;
