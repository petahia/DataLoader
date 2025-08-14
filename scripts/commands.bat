oc login --token=sha256~1i7W_svfp4U9ZwR917-AWuKSwvnhZJE01W9XbxPekxo --server=https://api.rm3.7wse.p1.openshiftapps.com:6443

oc get pods

docker pull mysql

docker login

docker pull mysql:8.0

docker run mysql:8.0

oc new-app mysql

oc new-app \
      -e MYSQL_USER=myuser \
      -e MYSQL_PASSWORD=mypassword \
      -e MYSQL_DATABASE=mydatabase \
      registry.redhat.io/rhscl/mysql-80-rhel7

 oc  get pods

 oc get pods

 oc  rsh mysql-80-rhel7-5887ff4f7d-pfd6q
sh-4.2$ mysql -u myuser -p


Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.36 Source distribution

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mydatabase         |
| performance_schema |
+--------------------+
3 rows in set (0.01 sec)

mysql> use mydatabase;
Database changed
mysql>
mysql> CREATE TABLE Data (Id INT NOT NULL AUTO_INCREMENT,LastName varchar(255),FirstName varchar(255),PRIMARY KEY (Id)
    -> ;;
Query OK, 0 rows affected (0.01 sec)

mysql> show table
    -> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show table' at line 2
mysql> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> CREATE TABLE Data (Id INT NOT NULL AUTO_INCREMENT,LastName varchar(255),FirstName varchar(255),PRIMARY KEY (Id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> CREATE TABLE Data (
    ->     Id INT NOT NULL AUTO_INCREMENT,
    ->     LastName varchar(255),
    ->     FirstName varchar(255),    PRIMARY KEY (Id)
    -> );
ERROR 1050 (42S01): Table 'Data' already exists
mysql> INSERT INTO Data (first_name,last_name)
    -> VALUES ('moti','wolf'),
    -> ('idan' ,'tal'),
    -> ('noah' ,'matsri'));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 4
mysql> INSERT INTO Data (first_name,last_name)
    -> VALUES ('moti','wolf'),('idan' ,'tal'),
    -> ('noah' ,'matsri');
ERROR 1054 (42S22): Unknown column 'first_name' in 'field list'
mysql> INSERT INTO Data (first_name,last_name)
    -> VALUES ('moti','wolf'),
    -> ('idan' ,'tal'),
    -> ('noah' ,'matsri');
ERROR 1054 (42S22): Unknown column 'first_name' in 'field list'
mysql> INSERT INTO Data (FirstName,LastName)
    -> VALUES ('moti','wolf'),
    -> ('idan' ,'tal'),('noah' ,'matsri');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from Data
    -> select * from Data;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from Data' at line 2
mysql> select * from Data;
+----+----------+-----------+
| Id | LastName | FirstName |
+----+----------+-----------+
|  1 | wolf     | moti      |
|  2 | tal      | idan      |
|  3 | matsri   | noah      |
+----+----------+-----------+
3 rows in set (0.00 sec)

mysql>

