if ! wp core is-installed --allow-root; then
    wp core download --allow-root
fi
wp core config --dbname=$DB_NAME --dbuser=$DB_USER --dbhost=db --dbpass=$DB_PASSWORD --allow-root
wp core install --url=10.12.177.168 --title="wordpress" --admin_user="$WP_USER" --admin_password="$WP_PASSWORD" --admin_email="$WP_EMAIL" --allow-root
chown -R www-data:www-data /var/www/html
if !  wp config has WP_REDIS_HOST --allow-root ; then
    wp config set WP_REDIS_HOST rd --allow-root
    wp plugin install redis-cache --allow-root
    wp plugin activate redis-cache --allow-root
    wp redis enable --allow-root
fi
wp user create casper casper@example.com --user_pass=755608 --role=contributor --allow-root
php-fpm7.3 --nodaemonize