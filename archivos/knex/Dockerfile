FROM node:10.16.3-alpine
RUN apk update
WORKDIR /knex
ADD config /knex/config
ADD config/package.json /knex/package.json
RUN apk --no-cache add curl
RUN npm i -g knex@^0.95.15 && npm i knex@^0.95.15 pg
RUN chmod 764 /knex/config/init.sh