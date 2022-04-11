#!/bin/sh
date    
PGPASSWORD=${POSTGRES_PASSWORD} pg_dump -h ${DIR} -p ${PR} -U ${US} ${POSTGRES_DB} > /usr/config_pg/${AR}
chown 1000:1000  /usr/config_pg/${AR}
date
