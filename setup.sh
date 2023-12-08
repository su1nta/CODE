#!/bin/bash

projectName=${PWD##*/};

databaseName=$(echo "$projectName" | tr '-' '_');

echo "HOSTNAME=mysql
USERNAME=root
PASSWORD=""
DATABASE=$databaseName" > .env;