#!/bin/bash
./scripts/setup.sh
./scripts/setup-mysql-demo-table.sh
docker compose build
docker-compose up -d
