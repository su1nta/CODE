# Stop Docker containers
docker-compose down

# Remove irrelevant directories
Remove-Item -Path logs, mysql\data, mysql\init, *.env -Recurse