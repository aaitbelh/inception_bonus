FROM debian:buster

RUN apt update && apt install redis-server -y
COPY tools/redis.conf /etc/redis/redis.conf
CMD ["redis-server", "--protected-mode", "no"]