FROM alpine:3.16.2

RUN apk update && apk add php-fpm php-mysqli php-phar php-mbstring mysql-client bash

ARG WORDPRESS_BASENAME="wordpress-6.0.3"
ARG WORDPRESS_ARCHIVE="$WORDPRESS_BASENAME.tar.gz"
RUN		cd /srv \
	&& 	wget https://wordpress.org/$WORDPRESS_ARCHIVE \
	&&	tar xf $WORDPRESS_ARCHIVE \
	&&	rm $WORDPRESS_ARCHIVE \
	&&	mv wordpress/* . \
	&&	rmdir wordpress \
	&&	wget -O /usr/bin/wp-cli https://github.com/wp-cli/wp-cli/releases/download/v2.7.1/wp-cli-2.7.1.phar \
	&&	chmod u+x /usr/bin/wp-cli
COPY root .

CMD ["/bin/start.sh"]
