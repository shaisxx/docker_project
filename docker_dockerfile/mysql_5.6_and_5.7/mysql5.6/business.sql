grant all privileges on *.* to 'root'@'localhost' identified by 'redhat';

USE mysql;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' identified by 'redhat';
FLUSH PRIVILEGES;

UPDATE user SET password=PASSWORD("redhat") WHERE user='root';
FLUSH PRIVILEGES;
