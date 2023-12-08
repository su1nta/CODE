#!/bin/bash

sudo docker-compose down
rm .env
rm -rf mysql
sudo docker rmi ${PWD##*/}-php_apache ${PWD##*/}-mysql