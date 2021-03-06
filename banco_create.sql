CREATE SCHEMA `leilao`;

USE `leilao`;

CREATE TABLE `usuario` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(50) DEFAULT NULL,
  `senha` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_UNIQUE` (`login`)
);


CREATE TABLE `leilao` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `descricao_produto` varchar(50) DEFAULT NULL,
  `valorLance` double NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
);



CREATE TABLE `lance` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `valorlance` double DEFAULT NULL,
  `id_participante_fk` smallint(5) unsigned NOT NULL,
  `id_produto` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id_produto` FOREIGN KEY (`id_produto`) REFERENCES `leilao` (`id`) ,
   CONSTRAINT `id_participante_fk` FOREIGN KEY (`id_participante_fk`) REFERENCES `usuario` (`id`)
)
