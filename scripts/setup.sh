#!/bin/bash

projectName=${PWD##*/};

databaseName=$(echo "$projectName" | tr '-' '_');

read -p "Enter password for MySQL Root => [Adminer requires a password!] :: " mysqlPassword;

echo "HOSTNAME=mysql
USERNAME=root
PASSWORD=$mysqlPassword
DATABASE=$databaseName" > php.env;


echo "MYSQL_ROOT_PASSWORD=$mysqlPassword
TZ=Asia/Kolkata" > mysql.env;