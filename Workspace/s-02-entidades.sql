--@Autor: Jesús Salazar Domínguez y Jorge Manzanares Peña 
--@Fecha de creación: 10/08/2021
--@Descripción: Definición de tablas

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





