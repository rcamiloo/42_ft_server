/etc/init.d/mysql start
/etc/init.d/nginx start
/etc/init.d/php7.3-fpm start

echo -e "\n\t\tIt's Alive!!! \n"

tail -f /dev/null
