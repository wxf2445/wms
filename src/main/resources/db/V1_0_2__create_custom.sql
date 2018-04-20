
DROP TABLE IF EXISTS `x_custom`;
CREATE TABLE `x_custom` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `code` varchar(255) DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;