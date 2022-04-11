#!/bin/sh
date
 if [ ! -f /home/usuario/.ssh/id_rsa ]; then
    mkdir /home/usuario/.ssh/cliente/
    cd /home/usuario/.ssh/cliente/
   /usr/bin/ssh-keygen -t rsa -f /home/usuario/.ssh/cliente/id_rsa -N '' -b 4096   
   cat  /home/usuario/.ssh/cliente/id_rsa.pub > /home/usuario/.ssh/known_hosts
   cat  /home/usuario/.ssh/cliente/id_rsa.pub > /home/usuario/.ssh/id_rsa.cliente.pub
   cat  /home/usuario/.ssh/cliente/id_rsa > /home/usuario/.ssh/id_rsa.cliente
   cat  /home/usuario/.ssh/cliente/id_rsa.pub > /home/usuario/.ssh/authorized_keys
   chmod g-w /home/usuario/.ssh/authorized_keys
   chmod g-w /home/usuario/.ssh/known_hosts 
   

fi 
date
