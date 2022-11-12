# wp core is-installed --allow-root
# if [ $? -eq 0 ]
# thenwp redis info
wp core download --allow-root
# fi
wp core config --dbname=$DB_NAME --dbuser=$WP_USER --dbhost=db --dbpass=$DB_PASSWORD --allow-root
wp config set WP_REDIS_HOST rd --allow-root
chown -R www-data:www-data /var/www/html
wp core install --url=10.12.177.168 --title="wordpress" --admin_user="$WP_USER" --admin_password="$WP_PASSWORD" --admin_email="$WP_EMAIL" --allow-root
wp plugin install redis-cache --allow-root
wp plugin activate redis-cache --allow-root
wp redis enable --allow-root
wp user create casper casper@example.com --user_pass=755608 --role=contributor --allow-root
php-fpm7.3 --nodaemonize