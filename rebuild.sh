#!/bin/sh

docker network create normie

docker-compose down --remove-orphans
docker-compose rm
docker-compose build
docker-compose up -d --wait

docker-compose exec bitcoin sh /source_update.sh
docker-compose exec bitcoin sh /build.sh

docker-compose exec electrs sh /source_update.sh
docker-compose exec electrs sh /build.sh