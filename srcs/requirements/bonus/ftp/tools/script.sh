#!/bin/bash
mkdir -p /var/run/vsftpd/empty
useradd $FTPUSER -d /var/www/html
echo -e "$FTPPASSWORD\n$FTPPASSWORD" | passwd $FTPUSER
usermod -aG www-data $FTPUSER
chown -R $FTPUSER:www-data /var/www/html
exec $@