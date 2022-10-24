FROM alpine:3.16.2

RUN apk update && apk add php-fpm php-mysqli bash 

ARG WORDPRESS_BASENAME="wordpress-6.0.3"
ARG WORDPRESS_ARCHIVE="$WORDPRESS_BASENAME.tar.gz"
RUN		cd /srv \
	&& 	wget https://wordpress.org/$WORDPRESS_ARCHIVE \
	&&	tar xf $WORDPRESS_ARCHIVE \
	&&	rm $WORDPRESS_ARCHIVE \
	&&	mv wordpress/* . \
	&&	rmdir wordpress
COPY root .

CMD ["/usr/sbin/php-fpm8", "-F"]
