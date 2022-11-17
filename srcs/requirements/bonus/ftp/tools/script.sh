#!/bin/bash
mkdir -p /var/run/vsftpd/empty
useradd casper -d /var/www/html
echo -e "755608\n755608" | passwd casper
usermod -aG www-data casper
echo -e "755608\n755608" | passwd casper
chown -R casper:casper /var/run/vsftpd/empty
exec $@