FROM debian:buster

RUN apt update && apt install vsftpd -y
COPY conf/vsftpd.conf /etc/vsftpd.conf
COPY conf/vsftpd.user_list /etc/vsftpd.user_list

ADD tools/script.sh /

RUN chmod +x /script.sh

ENTRYPOINT ["/script.sh", "vsftpd"]