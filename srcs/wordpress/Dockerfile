FROM alpine:3.17.0

RUN apk update && apk add php81-fpm php-mysqli php-phar php-mbstring php-tokenizer mysql-client bash acl

ARG WORDPRESS_BASENAME="wordpress-6.0.3"
ARG WORDPRESS_ARCHIVE="$WORDPRESS_BASENAME.tar.gz"
RUN		mkdir -p /srv/wordpress \
	&&	cd /srv/wordpress \
	&& 	wget https://wordpress.org/$WORDPRESS_ARCHIVE \
	&&	tar xf $WORDPRESS_ARCHIVE \
	&&	rm $WORDPRESS_ARCHIVE \
	&&	mv wordpress/* . \
	&&	rmdir wordpress \
	&&	wget -O /usr/bin/wp-cli https://github.com/wp-cli/wp-cli/releases/download/v2.7.1/wp-cli-2.7.1.phar \
	&&	chmod u+x /usr/bin/wp-cli
COPY root .

CMD ["/bin/start.sh"]
