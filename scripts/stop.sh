#!/bin/bash

docker-compose down
rm -rf ./msyql/data/ ./logs/ ./mysql/init/*
rm ./*.env
