FROM node:10.16.3-alpine
RUN apk update
#NO PUEDEN COEXISTIT DEV Y BUILD debido a que se traslapan los archivos en node_modules al ejecutarse 
# al mismo tiempo
RUN npm install -g serve
USER node
WORKDIR /home/usuario/web

CMD ["/bin/sh"]
