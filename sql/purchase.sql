-- create table & insert
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `p_time` mediumtext NOT NULL,
  `p_uid` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `p_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `purchase` VALUES ('1603571550',1,2000,'LG DIOS',2000000),('1603614755',1,2000,'LG Gram',1800000),('1603593500',2,2001,'LG Cyon',1400000),('1603572155',3,2002,'LG TV',1000000),('1603585955',5,2004,'LG Gram',3500000),('1603586155',5,2004,'LG TV',2500000);

