#!/bin/sh
FILE="/etc/nginx/sites-available/default"
RESULT=$(cat $FILE | grep 'autoindex on')

if [ "$RESULT" = "" ]
	then
		echo "Autoindex is OFF, we will enable it"
		sed -i 's/autoindex off/autoindex on/g' $FILE
		RESULT="ON"

	else
		echo "Autoindex is ON, we will disable it"
		sed -i 's/autoindex on/autoindex off/g' $FILE
		RESULT="OFF"
fi

echo "Restarting server..."
/etc/init.d/nginx restart
echo "Autoindex is now $RESULT"
