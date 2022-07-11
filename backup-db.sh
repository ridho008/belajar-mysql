
# backup db
/opt/lampp/bin/mysqldump belajar_mysql --user root --password --result-file=/home/asus/Downloads/belajar_mysql.sql

# import db
/opt/lampp/bin/mysql --user=root --password belajar_mysql_import < /home/asus/Downloads/belajar_mysql.sql

# import dari SQL
SOURCE /home/asus/Downloads/belajar_mysql.sql