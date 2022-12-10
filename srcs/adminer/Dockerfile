FROM alpine:3.17.0

RUN apk update && apk add php81-fpm php-session php-mysqli

RUN cd /srv/ \
	&& wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php \
	&& mv adminer-4.8.1.php adminer.php

COPY root .

CMD /usr/sbin/php-fpm81 -F --allow-to-run-as-root
