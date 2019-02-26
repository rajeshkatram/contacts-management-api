CREATE TABLE `contacts` (
  `idContact` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idContact`),
  UNIQUE KEY `idContact_UNIQUE` (`idContact`)
)