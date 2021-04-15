/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     5/04/2021 3:14:13 a. m.                      */
/*==============================================================*/


/*drop table if exists CITA;

drop table if exists CUENTA;

drop table if exists CUENTA_BANCARIA;

drop table if exists DOCTOR;

drop table if exists PACIENTE;

drop table if exists PAGO;

drop table if exists RECAUDO;*/

/*==============================================================*/
/* Table: CITA                                                  */
/*==============================================================*/
create table CITA
(
   ID_CITA              int not null auto_increment,
   CEDULA               char(20) not null,
   FECHA_CITA           datetime not null,
   CONSULTORIO          char(4) not null,
   primary key (ID_CITA)
);

/*==============================================================*/
/* Table: CUENTA                                                */
/*==============================================================*/
create table CUENTA
(
   EMAIL                char(128) not null,
   CONTRASENHA          char(128) not null,
   primary key (EMAIL)
);

/*==============================================================*/
/* Table: CUENTA_BANCARIA                                       */
/*==============================================================*/
create table CUENTA_BANCARIA
(
   ID_CUENTA            char(28) not null,
   EMAIL                char(128),
   BANCO                char(128),
   ASEGURADORA          char(128),
   SALDO                float(8,2) not null,
   primary key (ID_CUENTA)
);

/*==============================================================*/
/* Table: DOCTOR                                                */
/*==============================================================*/
create table DOCTOR
(
   CEDULA               char(20) not null,
   NOMBRES              char(128),
   APELLIDOS            char(128),
   FECHA_NACIMIENTO     date,
   EMAIL                char(128) not null,
   ESPECIALIDAD         char(50) not null,
   EMPLEADOR            char(256) not null,
   primary key (CEDULA)
);

/*==============================================================*/
/* Table: PACIENTE                                              */
/*==============================================================*/
create table PACIENTE
(
   CEDULA               char(20) not null,
   NOMBRES              char(128),
   APELLIDOS            char(128),
   FECHA_NACIMIENTO     date,
   EMAIL                char(128) not null,
   EPS                  char(128) not null,
   DIRECCION            char(256) not null,
   MUNICIPIO_RESIDENCIA char(50) not null,
   MUNICIPIO_PROCEDENCIA char(50) not null,
   primary key (CEDULA)
);

/*==============================================================*/
/* Table: PAGO                                                  */
/*==============================================================*/
create table PAGO
(
   ID_PAGO              char(20) not null,
   CEDULA               char(20) not null,
   CANTIDAD_PAGO        float(8,2) not null,
   EFECTUADO            bool not null,
   PROVEEDOR            char(128),
   primary key (ID_PAGO)
);

/*==============================================================*/
/* Table: RECAUDO                                               */
/*==============================================================*/
create table RECAUDO
(
   ID_RECAUDO           char(20) not null,
   CEDULA               char(20) not null,
   CANTIDAD_RECAUDO     float(8,2) not null,
   primary key (ID_RECAUDO)
);

alter table CITA add constraint FK_RELATIONSHIP_2 foreign key (CEDULA)
      references PACIENTE (CEDULA) on delete restrict on update restrict;

alter table CITA add constraint FK_RELATIONSHIP_9 foreign key (CEDULA)
      references DOCTOR (CEDULA) on delete restrict on update restrict;

alter table CUENTA_BANCARIA add constraint FK_RELATIONSHIP_5 foreign key (EMAIL)
      references CUENTA (EMAIL) on delete restrict on update restrict;

alter table DOCTOR add constraint FK_RELATIONSHIP_8 foreign key (EMAIL)
      references CUENTA (EMAIL) on delete restrict on update restrict;

alter table PACIENTE add constraint FK_RELATIONSHIP_1 foreign key (EMAIL)
      references CUENTA (EMAIL) on delete restrict on update restrict;

alter table PAGO add constraint FK_RELATIONSHIP_6 foreign key (CEDULA)
      references PACIENTE (CEDULA) on delete restrict on update restrict;

alter table RECAUDO add constraint FK_RELATIONSHIP_4 foreign key (CEDULA)
      references DOCTOR (CEDULA) on delete restrict on update restrict;


insert into cuenta(email, contrasenha) values('hadiazo@unal.edu.co', '1234');

insert into cuenta(email, contrasenha) values('xsata@hotmail.com', '1234');

insert into doctor(cedula, nombres, apellidos, fecha_nacimiento, email, especialidad, empleador) 
values('2398934430', 'Juan', 'Gómez Vélez', '1980-03-02', "hadiazo@unal.edu.co", "Obstetricia", "Nueva EPS");

insert into doctor(cedula, nombres, apellidos, fecha_nacimiento, email, especialidad, empleador) 
values('2398934', 'Luis Carlos', 'Martínez', '1983-11-24', "xsata@hotmail.com", "Medicina General", "HUN");
