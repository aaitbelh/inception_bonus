FROM debian:buster

RUN apt update && apt upgrade -y && apt install lsb-release -y\
&& apt install make\
&& apt install wget -y\
&& apt-get install -y tcl tk\
&& apt install build-essential -y\
&& wget https://download.redis.io/redis-stable.tar.gz\
&& tar -xzvf redis-stable.tar.gz && cd redis-stable && make && make install