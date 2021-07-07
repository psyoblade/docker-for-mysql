CREATE USER IF NOT EXISTS 'sqoop'@'localhost' IDENTIFIED BY 'sqoop';
GRANT ALL PRIVILEGES ON *.* TO 'sqoop'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'sqoop'@'%';

CREATE DATABASE IF NOT EXISTS `testdb1`;
USE testdb1;
SOURCE /var/sql/purchase.sql;

CREATE DATABASE IF NOT EXISTS `testdb2`;
USE testdb2;
SOURCE /var/sql/purchase.sql;

CREATE DATABASE IF NOT EXISTS `testdb3`;
USE testdb3;
SOURCE /var/sql/purchase.sql;
