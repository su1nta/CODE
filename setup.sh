#!/bin/bash

echo "DATABASE=${PWD##*/}
USERNAME=${PWD##*/}
MYSQL_DATABASE=${PWD##*/}
MYSQL_USER=${PWD##*/}
MYSQL_PASSWORD=phpMysqlConn@9" > .env