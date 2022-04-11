#!/bin/sh
if [ ! -d ./archivos/pgadmin/data ]; then
   mkdir  archivos/pgadmin/data
fi

sudo chown 5050:5050 archivos/pgadmin/data
sudo docker-compose -f docker-compose.yaml -f docker-compose.production.yaml --profile build -p semb_production up  -d
sleep 120
sudo docker-compose -p semb_production down
sleep 120
sudo chown 7070:7070 archivos/_data
sudo docker-compose -f docker-compose.yaml -f docker-compose.production.yaml --profile build -p semb_production up   -d
