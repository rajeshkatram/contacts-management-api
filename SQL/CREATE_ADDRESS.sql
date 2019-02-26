CREATE TABLE `address` (
  `idaddress` int(11) NOT NULL AUTO_INCREMENT,
  `idcontact` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zipcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idaddress`),
  UNIQUE KEY `idaddress_UNIQUE` (`idaddress`),
  KEY `contactaddress_idx` (`idcontact`),
  CONSTRAINT `contactaddress` FOREIGN KEY (`idcontact`) REFERENCES `contacts` (`idContact`)
) 