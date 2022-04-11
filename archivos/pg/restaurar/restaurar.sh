#!/bin/sh
date
echo '---Cancelar conecciones'
PGPASSWORD=${POSTGRES_PASSWORD} psql -h ${DIR} -p ${PR} -U ${US} -c "UPDATE pg_database SET datallowconn=false WHERE datname='${POSTGRES_DB}';"

echo '---Detener nase de datps'
PGPASSWORD=${POSTGRES_PASSWORD} psql -h ${DIR} -p ${PR} -U ${US} -c "SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = '${POSTGRES_DB}' AND pid <> pg_backend_pid();"

echo '---Eliminar base'
PGPASSWORD=${POSTGRES_PASSWORD} psql -h ${DIR} -p ${PR} -U ${US} -c "DROP DATABASE ${POSTGRES_DB}"

echo '---Crear base'
PGPASSWORD=${POSTGRES_PASSWORD} createdb -h ${DIR} -p ${PR} -U ${US} -E UTF8 -e ${POSTGRES_DB}

echo '---Subir respaldo'
PGPASSWORD=${POSTGRES_PASSWORD} psql -h ${DIR} -p ${PR} -U ${US} ${POSTGRES_DB} < /usr/config_pg/${AR} > /dev/null 2>&1
echo '---Base restaurarada a '
echo "/usr/config_pg/${AR}"
date
