#!/bin/sh
date
ls -als 
rm /certs/*  -f
openssl req -x509  -nodes -days 3650 -newkey rsa:4096 -keyout /certs/server.key -out /certs/server.cert -subj '/C=MX/ST=Colima/L=Colima/O=PruebaAws/CN=PruebaAws/emailAddress=siabuc@ucol.mx'
chown 5050:5050 /certs/*
date

