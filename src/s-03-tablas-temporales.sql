--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 10/08/2021
--@Descripción: Definición de tabla temporal

--Un usuario en búsqueda de una casa para vacacionar, puede ir eligiendo
--sus favoritas y añadirlas a esta tabla a modo de "carrito"

prompt Creando tabla temporal global
create global temporary table vivienda_carrito_vacaciones_temp(
  usuario_id    number(10,0),
  vivienda_id   number(10,0),
  direccion     varchar2(80),
  capacidad_max number(3,0),
  costo_dia     number(5,0),
  dias_max      number(3,0),
  deposito      number(6,0)
) on commit preserve rows;