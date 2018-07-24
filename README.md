# setup-tk2-259-39305
2018/05/07

Sakura(2018/04-)のvpsのセットアップ用

手作業(https://qiita.com/kaikusakari/items/f3358855e0d21a1f4e99)
0 180724-230242 indou@tk2-259-39305:setup-tk2-259-39305:
$ mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 3
Server version: 10.1.34-MariaDB MariaDB Server

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> update mysql.user set password=password('maria') where user ='root';
Query OK, 4 rows affected (0.00 sec)
Rows matched: 4  Changed: 4  Warnings: 0

MariaDB [(none)]> flush privileges;
Query OK, 0 rows affected (0.00 sec)

MariaDB [(none)]> exit
Bye
0 180724-230326 indou@tk2-259-39305:setup-tk2-259-39305:
$ mysql -u root -p
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 4
Server version: 10.1.34-MariaDB MariaDB Server

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> create database wp;
Query OK, 1 row affected (0.00 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| test               |
| wp                 |
+--------------------+
5 rows in set (0.00 sec)

MariaDB [(none)]> exit
Bye
0 180724-230424 indou@tk2-259-39305:setup-tk2-259-39305:
$ 

