FROM alpine:3.16.2

RUN apk update && apk add mariadb bash

RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

CMD ["mysqld_safe"]
