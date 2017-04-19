CREATE TABLE `user_position` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `pos_x` varchar(255) NOT NULL DEFAULT '0.0'
  `pos_y` varchar(255) NOT NULL DEFAULT '0.0'
  `pos_z` varchar(255) NOT NULL DEFAULT '0.0'
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
