FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
 apt-get install nginx=1.14.2-2+deb10u4 -y
COPY tools/default /etc/nginx/sites-available/default
RUN apt-get install openssl && \
    rm -rf /var/cache/apk/*
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/CN=aaitbelh" -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
