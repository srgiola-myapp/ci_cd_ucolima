#!/bin/sh
date
cd /knex/config
knex migrate:latest
knex seed:run 
curl -d'{"type":"replace_metadata", "args":'$(cat metadata.json)'}' http://graphql-engine:8080/v1/query
date
