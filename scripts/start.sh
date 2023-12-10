#!/bin/bash
./scripts/setup.sh
./scripts/setup-mysql-demo-table.sh
sudo docker compose build
sudo docker-compose up -d