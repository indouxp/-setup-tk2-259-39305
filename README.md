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
0 180801-221444 indou@tk2-259-39305:setup-tk2-259-39305:
$ sudo mysqladmin create wordpress -p 
[sudo] indou のパスワード:
Enter password: 
0 180801-221507 indou@tk2-259-39305:setup-tk2-259-39305:
$ 


0 180724-230626 indou@tk2-259-39305:setup-tk2-259-39305:
$ wget https://ja.wordpress.org/wordpress-4.9.7-ja.tar.gz
--2018-07-24 23:07:21--  https://ja.wordpress.org/wordpress-4.9.7-ja.tar.gz
ja.wordpress.org (ja.wordpress.org) をDNSに問いあわせています... 198.143.164.252
ja.wordpress.org (ja.wordpress.org)|198.143.164.252|:443 に接続しています... 接続しました。
HTTP による接続要求を送信しました、応答を待っています... 200 OK
長さ: 9283231 (8.9M) [application/octet-stream]
`wordpress-4.9.7-ja.tar.gz' に保存中

100%[=======================================================================>] 9,283,231   4.77MB/s 時間 1.9s   

2018-07-24 23:07:23 (4.77 MB/s) - `wordpress-4.9.7-ja.tar.gz' へ保存完了 [9283231/9283231]

0 180724-230723 indou@tk2-259-39305:setup-tk2-259-39305:
$ mkdir /var/www
mkdir: ディレクトリ `/var/www' を作成できません: ファイルが存在します
1 180724-230803 indou@tk2-259-39305:setup-tk2-259-39305:
$ sudo tar zxf wordpress-4.9.7-ja.tar.gz -C /var/www
[sudo] indou のパスワード:
0 180724-230820 indou@tk2-259-39305:setup-tk2-259-39305:
$ 

シェルスクリプトマガジン2018 August Vol.55 P.22
