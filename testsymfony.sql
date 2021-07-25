

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `testsymfony`
--
create database testsymfony;
use testsymfony;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--


DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `primer_nombre` varchar(80) NOT NULL,
  `segundo_nombre` varchar(80) DEFAULT NULL,
  `primer_apellido` varchar(80) NOT NULL,
  `segundo_apellido` varchar(80) DEFAULT NULL,
  `dpi` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `primer_nombre`, `segundo_nombre`, `primer_apellido`, `segundo_apellido`, `dpi`) VALUES
(1, 'Julio', NULL, 'Rodríguez', NULL, 12345678910),
(2, 'Juan', 'Manuel', 'Perez', NULL, 1234567898);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `roles`, `password`, `active`) VALUES
(1, 'jrodriguez', '[\"ROLE_USER\"]', '$2y$13$fOEd7Kd1X15ncw3iWOxVjePvD6.kY9DmQAhzUpUDN6EO0.QiyDVly', 1),
(2, 'psantiago', '[\"ROLE_USER\"]', '$2y$13$fOEd7Kd1X15ncw3iWOxVjePvD6.kY9DmQAhzUpUDN6EO0.QiyDVly', 1),
(3, 'abarrios', '[\"ROLE_USER\"]', '$2y$13$vMWwFLo556eZ5mA10cixg.griAK1tgw9.693wQw.8nf7wObLv8D4K', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
