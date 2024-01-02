#!/bin/bash

projectName=${PWD##*/};

databaseName=$(echo "$projectName" | tr '-' '_');

echo "HOSTNAME=mysql
USERNAME=root
PASSWORD=""
DATABASE=$databaseName" > php.env;

echo "MYSQL_ALLOW_EMPTY_PASSWORD=1
TZ=Asia/Kolkata" > mysql.env;

echo "PMA_HOST=mysql
PMA_PORT=3306" > adminer.env