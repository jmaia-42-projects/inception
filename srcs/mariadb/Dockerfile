FROM alpine:3.16.2

RUN apk update && apk add mariadb mysql-client inotify-tools bash

RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

RUN sed -i '/^skip-networking$/d' /etc/my.cnf.d/mariadb-server.cnf

RUN mkdir /var/lib/mysql/wordpress && chown mysql:mysql /var/lib/mysql/wordpress 
COPY root .

HEALTHCHECK --interval=5s --timeout=5s --retries=3 --start-period=10s CMD netstat -tunlp | grep 3306

CMD ["/bin/start.sh"]
