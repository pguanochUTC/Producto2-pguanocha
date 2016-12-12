# --- First database schema

# --- !Ups

create table postres (
  id                        bigint not null,
  nombre                    varchar(255),
  descripcion                    varchar(255),
  origen                    varchar(255),
  valor                    varchar(255),
 
  constraint pk_postres primary key (id))
;


create sequence postres_seq start with 1000;

# --- !Downs

SET REFERENTIAL_INTEGRITY FALSE;


drop table if exists postres;

SET REFERENTIAL_INTEGRITY TRUE;

drop sequence if exists postres_seq;

