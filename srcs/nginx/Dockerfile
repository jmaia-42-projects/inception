FROM alpine:3.17.0

RUN apk update && apk add nginx openssl bash

ARG DOMAIN_NAME

RUN sed -i 's/TLSv1.1//' /etc/nginx/nginx.conf

COPY root /

RUN sed -i "s/\$DOMAIN_NAME/$DOMAIN_NAME/" /etc/nginx/http.d/default.conf

RUN openssl req -x509 -newkey rsa:4096 -keyout /root/key.pem -out /root/cert.pem -sha256 -days 365 -nodes -subj "/CN=$DOMAIN_NAME" && chmod 400 /root/key.pem /root/cert.pem

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
