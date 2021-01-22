/etc/init.d/nginx start
/etc/init.d/mysql start
/etc/init.d/php7.3-fpm start
mysql -u root <<-EOF
UPDATE mysql.user SET Password=PASSWORD('rodrigo') WHERE User='root';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.db WHERE Db='test' OR Db='test_%';
FLUSH PRIVILEGES;
CREATE DATABASE wpbase DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
EOF

bash


echo "CREATE DATABASE wpbase DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root
mysqladmin --user=root password "nasimon"
