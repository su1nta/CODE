#!/bin/bash

docker-compose down
rm -rf ./msyql/data/ ./logs/
cd mysql
rm -rf data/
rm -rf init/*
cd ..
rm ./*.env