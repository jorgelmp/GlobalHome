--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 10/08/2021
--@Descripción: Definición de tablas

--NO SE DEFINIERON COMPORTAMIENTOS PARA ELIMINACIÓN DE REFERENCIAS (FK)

prompt Creando secuencias para vivienda, historico, usuario, tarjeta de credito
create sequence seq_vivienda
start with 1
increment by 1
nomaxvalue 
nominvalue
nocycle
;

create sequence seq_usuario
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
;

create sequence seq_historico_status_vivienda
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
;

create sequence seq_tarjeta_credito
start with 1
increment by 1
nomaxvalue
nominvalue
nocycle
;

prompt Creando tabla USUARIO
create table usuario(
  usuario_id      number(10,0)   default seq_usuario.nextval,
  email           varchar2(150)  not null,
  nombre_usuario  varchar2(10)   not null,
  nombre          varchar2(30)   not null,
  ap_paterno      varchar2(30)   not null,
  ap_materno      varchar2(30)   null,
  constrasenia    varchar2(15)   not null,
  constraint usuario_pk              primary key(usuario_id),
  constraint usuario_email_uk        unique(email),
  constraint usuario_contrasenia_chk check (length(constrasenia) >= 8)
)
;

prompt Creando tabla STATUS_VIVENDA
create table status_vivienda(
  status_vivienda_id    number(10,0) constraint status_vivienda_pk primary key,
  clave                 varchar2(4) not null,
  descripcion           varchar2(20) not null
)
;

prompt Creando tabla VIVIENDA
create table vivienda(
  vivienda_id         number(10,0) default seq_vivienda.nextval,
  es_renta            number(1,0)    not null,
  es_venta            number(1,0)    not null,
  es_vacional         number(1,0)    not null,
  direccion           varchar2(50)   not null,
  latitud             varchar2(8)    not null,-- 68.131° N
  longitud            varchar2(8)    not null,
  ubicacion           generated always as (latitud||','||longitud) virtual, --REVISAR
  capacidad_max       number(3,0)    not null,
  descripcion         varchar2(2000) not null,
  fecha_status        date           not null,
  status_vivienda_id  number(10,0)   not null,
  usuario_id          number(10,0)   not null,
  constraint vivienda_pk                    primary key(vivienda_id),       
  constraint vivienda_status_vivienda_id_fk foreign key (status_vivienda_id)
  references status_vivienda(status_vivienda_id),
  constraint vivienda_usuario_id_fk         foreign key (usuario_id)
  references usuario(usuario_id),
  constraint vivienda_tipo_chk 
  check((es_renta=1 and es_vacional=1 and es_venta=0) or 
  (es_renta + es_vacional + es_venta = 1))
)
;

prompt Creando tabla HISTORICO_STATUS_VIVIENDA
create table historico_status_vivienda(
  historico_status_vivienda_id  number(10,0) 
  default seq_historico_status_vivienda.nextval,
  fecha_status                  date          not null,
  vivienda_id                   number(10,0)  not null,
  status_vivienda_id            number(10,0)  not null,
  constraint historico_status_vivienda_pk 
  primary key(historico_status_vivienda_id),
  constraint status_vivienda_id_fk  
  foreign key(status_vivienda_id)
  references status_vivienda(status_vivienda_id),
  constraint vivienda_id_fk         
  foreign key(vivienda_id)
  references vivienda(vivienda_id)
)
;

prompt Creando tabla IMAGEN
create table imagen(
  num_foto     number(2,0)   not null,
  vivienda_id  number(10,0)  not null,
  foto         blob          not null,
  constraint imagen_vivienda_id_fk foreign key(vivienda_id)
  references vivienda(vivienda_id),
  constraint imagen_pk primary key (num_foto,vivienda_id)
)
;

prompt Creando tabla SERVICIO
create table servicio(
  servicio_id  number(10,0)  constraint servicio_pk primary key,
  nombre       varchar2(50)  not null,
  descripcion  varchar2(200) not null,
  icono        blob          not null
)
;

prompt Creando tabla VIVIENDA_SERVICIO
create table vivienda_servicio(
  vivienda_servicio_id   number(10,0) constraint vivienda_servicio_pk primary key,
  servicio_id not null constraint vivienda_servicio_servicio_id_fk 
  references servicio(servicio_id),
  vivienda_id not null constraint vivienda_servicio_vivienda_id_fk 
  references vivienda(vivienda_id)
)
;

prompt Creando tabla MENSAJE
create table mensaje(
  mensaje_id         number(10,0)    constraint mensaje_pk primary key,
  titulo             varchar2(40)    not null,
  cuerpo             varchar2(500)   not null,
  leido              number(1,0)     not null,
  usuario_id   not null constraint mensaje_usuario_id_fk 
  references usuario(usuario_id),
  respuesta_id not null constraint mensaje_respuesta_id_fk
  references mensaje(mensaje_id),
  vivienda_id  not null constraint mensaje_vivienda_id_fk 
  references vivienda(vivienda_id)
)
;

prompt Creando tabla VIVIENDA_EN_RENTA
create table vivienda_en_renta(
  vivienda_id        number(10,0) constraint vivienda_en_renta_pk primary key,
  renta_mensual      number(7,0)  not null,
  dia_deposito       number(2,0)  not null,
  constraint vivienda_en_renta_vivienda_id_fk foreign key(vivienda_id)
  references vivienda(vivienda_id)
)
;

prompt Creando tabla VIVIENDA_VACACIONES
create table vivienda_vacaciones(
  vivienda_id        number(10,0) constraint vivienda_vacaciones_pk primary key,
  costo_dia          number(5,0)  not null,
  dias_max           number(3,0)  not null,
  deposito           number(6,0)  not null
)
;

prompt Creando tabla VIVIENDA_EN_VENTA
create table vivienda_en_venta(
  vivienda_id        number(10,0) constraint vivienda_en_venta_pk primary key,
  num_catastral      number(10,0) not null,
  folio              varchar2(18) not null,
  avaluo             blob         not null
)
;

prompt Creando tabla CLABE_VIVIENDA
create table clabe_vivienda(
  clabe_vivienda_id number(10,0) constraint clabe_vivienda_pk primary key,
  vivienda_id not null constraint clabe_vivienda_vivienda_id_fk 
  references vivienda(vivienda_id),
  clabe             number(18,0) not null
)
;

prompt Creando tabla CONTRATO
create table contrato(
  contrato_id       number(10,0)  constraint contrato_pk primary key,
  folio             varchar2(8)   not null,
  fecha             date          not null,
  documento         blob          not null,
  vivienda_id not null constraint contrato_vivienda_id_fk 
  references vivienda(vivienda_id),
  usuario_id  not null constraint contrato_usuario_id_fk
  references usuario(usuario_id)
)
;

prompt Creando tabla VENTA_USUARIO
create table venta_usuario(
  venta_usuario_id   number(10,0)   constraint venta_usuario_pk primary key,
  comision           number(8,0)    not null,
  clabe              number(18,0)   not null,
  vivienda_id not null constraint venta_usuario_vivienda_id_fk 
  references vivienda(vivienda_id),
  usuario_id  not null constraint venta_usuario_usuario_id_fk
  references usuario(usuario_id)
)
;

prompt Creando tabla MENSUALIDAD
create table mensualidad(
  mensualidad_id    number(10,0)   constraint mensualidad_pk primary key,
  fecha_pago        date           not null,
  importe           number(10,0)   not null,
  archivo           blob           not null,
  venta_usuario_id  not null constraint mensualidad_venta_usuario_id_fk
  references venta_usuario(venta_usuario_id)
)
;

prompt Creando tabla TARJETA_CREDITO
create table tarjeta_credito(
  tarjeta_credito_id   number(10,0)     default seq_tarjeta_credito.nextval,
  num_tarjeta          number(16,0)     not null,
  mes_expiracion       number(2,0)      not null,
  anio_expiracion      number(4,0)      not null,
  num_seguridad        number(4,0)      not null,
  constraint tarjeta_credito_pk primary key(tarjeta_credito_id)
)
;

prompt Creando tabla ALQUILER
create table alquiler(
  alquiler_id         number(10,0)  constraint alquiler_pk primary key,
  folio               varchar2(8)   not null,
  periodo             number(3,0)   not null,
  vivienda_id not null constraint alquiler_vivienda_id_fk 
  references vivienda(vivienda_id),
  usuario_id  not null constraint alquiler_usuario_id_fk
  references usuario(usuario_id),
  tarjeta_credito_id not null constraint alquiler_tarjeta_credito_id_fk
  references tarjeta_credito(tarjeta_credito_id)
)
;

prompt Creando tabla VACACIONAL_NOTIFICACIONES
create table vacacional_notificaciones(
  vacacional_notificaciones_id  number(10,0) 
  constraint vacacional_notificaciones_pk primary key,
  num_celular number(10,0)            not null,
  notificacion_enviada number(10,0)   not null,
  vivienda_id not null constraint vacacional_notificaciones_vivienda_id_fk 
  references vivienda(vivienda_id),
  usuario_id  not null constraint vacacional_notificaciones_usuario_id_fk
  references usuario(usuario_id)
)
;

prompt Creando tabla VACACIONAL_CALIFICACION
create table vacacional_calificacion(
  vacacional_calificacion_id   number(10,0)
  constraint vacacional_calificacion_pk primary key,
  calificacion number(1,0)     not null,
  descripcion  varchar2(1000)  not null,
  fecha        date            not null,
  vivienda_id not null constraint vacacional_calificacion_vivienda_id_fk 
  references vivienda(vivienda_id),
  usuario_id  not null constraint vacacional_calificacion_usuario_id_fk
  references usuario(usuario_id)
)
;

