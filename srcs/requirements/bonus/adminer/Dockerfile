FROM debian:buster


WORKDIR /var/www/html/adminer

RUN apt update && apt-get install php7.3-common php7.3-fpm php-mysql -y \
&& apt install wget -y
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY tools/script.sh /
RUN service php7.3-fpm start && chmod +x /script.sh

CMD ["bash", "/script.sh"]