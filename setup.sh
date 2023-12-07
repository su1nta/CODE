#!/bin/bash

echo "HOSTNAME=mysql
USERNAME=root
PASSWORD=""
DATABASE=${PWD##*/}" > .env