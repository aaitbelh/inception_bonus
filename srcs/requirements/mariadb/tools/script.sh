mysql -u root -e "create database $DB_NAME;"
mysql -u root -e "create user '$DB_USER'@'%' identified by '$DB_PASSWORD';"
mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"