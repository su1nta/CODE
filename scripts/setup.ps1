# Get current directory name
$projectName = Split-Path -Leaf $PWD.Path

# Replace hyphens with underscores for database name
$databaseName = $projectName -replace "-", "_"

# Prompt user for MySQL root password
$mysqlPassword = Read-Host "Enter password for MySQL Root => [Adminer requires a password!]"

# Create php.env file
@"
HOSTNAME=mysql
USERNAME=root
PASSWORD=$mysqlPassword
DATABASE=$databaseName
"@ | Set-Content php.env

# Create mysql.env file
@"
MYSQL_ROOT_PASSWORD=$mysqlPassword
TZ=Asia/Kolkata
"@ | Set-Content mysql.env
