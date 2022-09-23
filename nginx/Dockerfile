FROM alpine:3.16.2

RUN apk update && apk add nginx bash

RUN sed -i 's/TLSv1.1//' /etc/nginx/nginx.conf

COPY root /

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
