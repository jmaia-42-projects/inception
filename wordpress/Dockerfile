FROM alpine:3.16.2

RUN apk update && apk add php-fpm php-mysqli bash 

COPY root .

CMD ["/usr/sbin/php-fpm8", "-F"]
