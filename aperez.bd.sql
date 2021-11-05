USE joinsdb;

CREATE TABLE IF NOT EXISTS `tabla1` (
  `id` int(11) NOT NULL,
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

SELECT * FROM tabla2;


/* 01: INNER JOIN */
 SELECT * FROM tabla1 a INNER JOIN tabla2 b ON a.id = b.id;  # JUNTAS DATOS QUE COINCIDEN EN AMBAS TABLAS 
 
 /* 02: LEFT OUTER JOIN */
select * from tabla1 a LEFT OUTER JOIN tabla2 b on a.id = b.id;

/* 03: RIGHT OUTER JOIN */
select * from tabla1 a RIGHT OUTER JOIN tabla2 b on a.id = b.id;

/* 04: FULL OUTER JOIN NO ANDA EN MYSQL */
select * from tabla1 FULL OUTER JOIN tabla2 on tabla1.id = tabla2.id; (PEEERO en mysql NO tenemos FULL OUTER join)

/* 04: FULL OUTER JOIN aquí el equivalente sería asi */
SELECT * FROM tabla1 t1
LEFT JOIN tabla2 t2 ON t1.id = t2.id
UNION
SELECT * FROM tabla1 t1
RIGHT JOIN tabla2 t2 ON t1.id = t2.id;
 
 
 
 
 
 
 
 
 
 