-- Creacion de la BBDD
CREATE DATABASE joinsdb;

-- USO de la BBDD
use joinsdb;

-- CREACION DE TABLA

CREATE TABLE IF NOT EXISTS `tabla1` (
  `id` int(11) PRIMARY KEY NOT NULL,
  `letra` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

/* agregamos la columna id como PK
ALTER TABLE `joinsdb`.`tabla1` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT ;
*/

-- insertamos los datos

INSERT INTO `tabla1` (`id`, `letra`) VALUES
(1, 'Uno'),
(2, 'Dos'),
(3, 'Tres'),
(4, 'Cuatro');

-- creacion de tabla 2

CREATE TABLE IF NOT EXISTS `tabla2` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `valores` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=LATIN1;

-- insertar datos en la tabla 2

INSERT INTO `tabla2` (`id`, `valores`) VALUES
(3, 'Tres'),
(4, 'Cuatro'),
(5, 'Cinco'),
(6, 'Seis');