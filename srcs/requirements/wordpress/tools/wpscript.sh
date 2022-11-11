# wp core is-installed --allow-root
# if [ $? -eq 0 ]
# then
wp core download --allow-root
# fi
wp core config --dbname=$DB_NAME --dbuser=$WP_USER --dbhost=db --dbpass=$DB_PASSWORD --allow-root 2> /dev/null
wp core install --url=10.12.177.168 --title="wordpress" --admin_user="$WP_USER" --admin_password="$WP_PASSWORD" --admin_email="$WP_EMAIL" --allow-root 2> /dev/null
wp user create casper casper@example.com --user_pass=755608 --role=contributor --allow-root
php-fpm7.3 --nodaemonize
