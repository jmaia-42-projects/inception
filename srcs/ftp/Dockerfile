FROM alpine:3.17.0

ARG FTP_PASS

RUN apk update && apk add vsftpd

RUN echo -e " \
seccomp_sandbox=NO\n\
local_enable=YES\n\
write_enable=YES" >> /etc/vsftpd/vsftpd.conf \
&& sed -i 's/^\(anonymous_enable\).*$/\1=NO/' /etc/vsftpd/vsftpd.conf

RUN sh -c $'adduser wordpress << EOF \n\
$FTP_PASS\n\
$FTP_PASS\n\
EOF'

CMD ["vsftpd", "/etc/vsftpd/vsftpd.conf"]
