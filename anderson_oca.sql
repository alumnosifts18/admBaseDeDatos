CREATE DATABASE IF NOT EXISTS joinsdb;

USE joinsdb;

CREATE TABLE IF NOT EXISTS `tabla1` (
  `id` int(11) PRIMARY KEY NOT NULL,
  `letra` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
INSERT INTO `tabla1` (`id`, `letra`) VALUES
(1, 'Uno'),
(2, 'Dos'),
(3, 'Tres'),
(4, 'Cuatro');
SELECT * FROM tabla1;
CREATE TABLE IF NOT EXISTS `tabla2` (
  `id` int(11) NOT NULL,
  `valores` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=LATIN1;
INSERT INTO `tabla2` (`id`, `valores`) VALUES
(3, 'Tres'),
(4, 'Cuatro'),
(5, 'Cinco'),
(6, 'Seis');


/* 01: INNER JOIN */
 SELECT * tabla1 a INNER JOIN IN tabla2 b on a.id = b.id;

/* 02: LEFT OUTER JOIN */
select * from tabla1 a LEFT OUTER JOIN tabla2 b on a.id = b.id;

/* 03: RIGHT OUTER JOIN */
select * from tabla1 a RIGHT OUTER JOIN tabla2 b on a.id = b.id;

/* #04: FULL OUTER JOIN */
select * from tabla1 FULL OUTER JOIN tabla2 on tabla1.id = tabla2.id;

SELECT * FROM tabla1 a
LEFT JOIN tabla2 b ON a.id = b.id
UNION
SELECT * FROM tabla1
RIGHT JOIN tabla2 ON a.id = b.id


