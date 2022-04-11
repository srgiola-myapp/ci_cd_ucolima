FROM alpine:3.13.2

RUN apk update
RUN  apk add openssh-server openssh-client openssl sudo 
RUN adduser -D usuario

RUN ssh-keygen -A
RUN mkdir /home/usuario/.ssh; chown usuario:usuario /home/usuario/.ssh

RUN sed -i 's/#AddressFamily any/AddressFamily any/' /etc/ssh/sshd_config  && \ 
   sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/' /etc/ssh/sshd_config  && \
  sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config  
RUN echo "usuario:${USERPASS}" | chpasswd

CMD ["/bin/sh"]
