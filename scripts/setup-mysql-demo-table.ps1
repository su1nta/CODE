# Load variables from php.env
Get-Content "php.env" | ForEach-Object {
    $line = $_ -replace '^([^=]+)=([^=]+)$', '$1="$2"'
    Invoke-Expression ('$' + $line)
}

# Create directory for MySQL initialization scripts
New-Item -ItemType Directory -Path mysql\init -Force

# Define SQL commands
$sqlCommands = @"
CREATE DATABASE IF NOT EXISTS $DATABASE;
USE $DATABASE;
CREATE TABLE IF NOT EXISTS demo (sl_no INT(10) AUTO_INCREMENT PRIMARY KEY, name VARCHAR(25) NOT NULL);
INSERT INTO demo (name) VALUES ('Krishnamurty Saha'), ('Gopal Krishna Roy'), ('Bhairab Guha');
"@

# Write SQL commands to run.sql
$sqlCommands | Set-Content mysql\init\run.sql
