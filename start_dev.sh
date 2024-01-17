#!/usr/bin bash

cat > ./.env << EOF
ENV=Production

MYSQL_ROOT_PASSWORD=123456
MYSQL_USER=dbuser
MYSQL_DATABASE=mysql_test
MYSQL_PASSWORD=123456
MYSQL_HOST=db
MYSQL_PORT=3307

EOF

docker-compose up -d --build