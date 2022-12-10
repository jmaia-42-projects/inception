FROM alpine:3.17.0

RUN apk update && apk add redis

RUN sed -i 's/protected-mode yes/protected-mode no/g' /etc/redis.conf

RUN sed -i 's/bind 127.0.0.1 -::1//g' /etc/redis.conf

CMD ["redis-server", "/etc/redis.conf"]
