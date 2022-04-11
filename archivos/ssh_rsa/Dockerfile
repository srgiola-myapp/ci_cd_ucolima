FROM alpine:3.13.2

RUN apk update
RUN  apk add openssh-server openssh-client openssl sudo 
RUN adduser -D usuario

RUN ssh-keygen -A
RUN mkdir /home/usuario/.ssh; chown usuario:usuario /home/usuario/.ssh

RUN echo "usuario:${USERPASS}" | chpasswd
USER usuario
CMD ["/bin/sh"]
