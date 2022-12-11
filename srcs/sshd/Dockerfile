FROM alpine:3.17.0

ARG SSH_PASS

RUN apk update && apk add openssh

RUN ssh-keygen -A && sh -c $'adduser wordpress << EOF \n\
$SSH_PASS\n\
$SSH_PASS\n\
EOF'

CMD ["/usr/sbin/sshd", "-D", "-d"]
