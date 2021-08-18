--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 10/08/2021
--@Descripción: Definición de tabla externa

create table vivienda_vacacional_ext(
  vivienda_id      number(10,0),
  latitud          number(6,3),
  longitud         number(6,3),
  costo_dia        number(5,0),
  deposito         number(6,0),
  fecha_alquiler   date
) 
organization external (
  type oracle_loader
  default directory proy_dir
  access parameters (
    records delimited by newline
    badfile tmp_dir:'vivienda_vacacional_ext_bad.log'
    logfile tmp_dir:'vivienda_vacacional_ext.log'
    fields terminated by ','
    lrtrim
    missing field values are null
      (
        vivienda_id, latitud, longitud, costo_dia, deposito
        fecha_alquiler date mask "dd/mm/yyyy"
      )
  )
    location ('vivienda_vacacional_ext.csv')
)
reject limit unlimited;