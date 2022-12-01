docker network create normie
docker-compose down --remove-orphans && docker-compose rm && docker-compose build && docker-compose up --remove-orphans