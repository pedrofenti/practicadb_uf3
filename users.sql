/*Usuarios de la bd pokenti3*/

CREATE USER 'gestor'@'localhost' IDENTIFIED BY 'enti';

GRANT all privileges ON pokenti3.* TO 'gestor'@'localhost';

CREATE USER 'webuser'@'localhost';

GRANT SELECT,INSERT,UPDATE ON pokenti3.* TO 'webuser'@'localhost';

CREATE USER 'backup'@'localhost';

GRANT SELECT,SHOW VIEW,TRIGGER,LOCK TABLES ON pokenti3.* TO 'backup'@'localhost';
