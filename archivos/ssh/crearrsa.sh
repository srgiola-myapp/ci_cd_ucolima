#!/bin/sh
date
   chown usuario:usuario /home/usuario/.ssh/*   
   chown -R  usuario:usuario /home/usuario/*   
   chown -R  usuario:usuario /home/usuario/   
   ls -als /home/usuario/.ssh/
date
/usr/sbin/sshd -D 
