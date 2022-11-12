FROM debian:buster


RUN apt update && apt install vsftpd -y
COPY tools/vsftpd.conf /etc/vsftpd.conf
COPY tools/vsftpd.user_list /etc/vsftpd.user_list

ADD tools/script.sh /usr/bin/script

RUN chmod +x /usr/bin/script

ENTRYPOINT [ "script" ]

CMD ["tail", "-f", "/dev/null"]