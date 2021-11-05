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