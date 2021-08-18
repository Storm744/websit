create table nutzer 
(id int auto_increment not null,
benutzer varchar(50),
passwort varchar(50),
usrgrup varchar(10),
primary key(id))
Engine=Innodb;

insert into nutzer values
(1,'Fred','geheim','admin'),
(2,'Admin','supergeheim','admin'),
(3,'Willi','weissnicht','gast');




