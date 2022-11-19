FROM debian:buster

RUN apt update && apt install nginx -y \
&& apt install openssl
COPY conf/default /etc/nginx/sites-available/default
COPY holder /var/www/html
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/CN=aaitbelh" -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
CMD ["nginx", "-g", "daemon off;"]