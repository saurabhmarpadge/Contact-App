CREATE USER 'admin123'@'localhost' IDENTIFIED BY 'admin123';

GRANT ALL PRIVILEGES ON * . * TO 'admin123'@'localhost';


CREATE DATABASE  IF NOT EXISTS `web_contact_app` 
USE `web_contact_app`;

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile_no` varchar(45) DEFAULT NULL,
  `work_no` varchar(45) DEFAULT NULL,
  `home_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

LOCK TABLES `contact` WRITE;

INSERT INTO `contact` VALUES 
	(1,'David','Adams','david@gmail.com','9062524359','95378523619','9345523619'),
	(2,'John','Doe','john@ymail.com','567523619','553523619','234523619'),
	(3,'Ajay','Rao','ajay@tmail.com','897523619','534523619','567523619'),
	(4,'Mary','Public','mary@email.com','789723619','9788523619','567546619'),
	(5,'Maxwell','Dixon','max@hotmail.com','9789523619','564564619','545637619');

