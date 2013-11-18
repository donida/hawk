CREATE SEQUENCE userIdSeq START 1;
create table users(
      id bigint not null default nextval('userIdSeq') primary key,
      username varchar(60) not null,
      password varchar(50) not null,
      enabled boolean not null);
      create unique index ix_users_username on users (username);

CREATE SEQUENCE authorityIdSeq START 1;
create table authorities (
      id bigint not null default nextval('authorityIdSeq') primary key,
      username varchar(60) not null,
      authority varchar(50) not null,
      constraint fk_authorities_users foreign key(username) references users(username));
      create unique index ix_auth_username on authorities (username,authority);

create table groups (
  id serial primary key,
  group_name varchar(50) not null);

create table group_authorities (
  group_id bigint not null,
  authority varchar(50) not null,
  constraint fk_group_authorities_group foreign key(group_id) references groups(id));

create table group_members (
  id serial primary key,
  username varchar(50) not null,
  group_id bigint not null,
  constraint fk_group_members_group foreign key(group_id) references groups(id));

create table persistent_logins (
  username varchar(74) not null,
  series varchar(74) primary key,
  token varchar(74) not null,
  last_used timestamp not null);