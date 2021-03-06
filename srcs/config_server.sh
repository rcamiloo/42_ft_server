# Cria diretório local que serve os indexes
mkdir /var/www/localhost

# copia configurações e snippets para nginx e php
cd /root/
cp -pr ./nginx.conf /etc/nginx/sites-available/default
cp -pr ./info.php /var/www/localhost/

# cria certificado e chave habilitando conexão na porta 443
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj '/C=CA/ST=Quebec/L=Quebec/O=42SP/CN=rcamilo-' 		\
	-keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt

# inicia mysql para que a outras configurações em banco sejam efetuadas
/etc/init.d/mysql start

# configura mysql ccom banco que será usado pelo Wordpress 'wp_base'
mysql -u root <<-EOF
CREATE DATABASE wp_base DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
EOF

# baixa e configura phmMyAdmin
wget https://files.phpmyadmin.net/phpMyAdmin/4.9.1/phpMyAdmin-4.9.1-english.tar.gz
tar -xf phpMyAdmin-4.9.1-english.tar.gz && rm -rf phpMyAdmin-4.9.1-english.tar.gz
mv phpMyAdmin-4.9.1-english /var/www/localhost/phpmyadmin
cp -pr ./config.inc.php /var/www/localhost/phpmyadmin/config.inc.php
chown -R www-data:www-data /var/www/localhost/phpmyadmin
mysqladmin --user=root password ""

# baixa e configura Wordpress
wget https://br.wordpress.org/wordpress-5.3.2-pt_BR.tar.gz
tar -xf wordpress-5.3.2-pt_BR.tar.gz && rm -rf wordpress-5.3.2-pt_BR.tar.gz
cp wp-config.php wordpress/wp-config.php
mv wordpress /var/www/localhost/



