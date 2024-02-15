#!/bin/bash

source php.env
mkdir mysql/init
echo "CREATE DATABASE IF NOT EXISTS $DATABASE;
USE $DATABASE;
CREATE TABLE IF NOT EXISTS demo (sl_no INT(10) AUTO_INCREMENT PRIMARY KEY, name VARCHAR(25) NOT NULL);
INSERT INTO demo (name) VALUES ROW('Krishnamurty Saha'), ROW('Gopal Krishna Roy'), ROW('Bhairab Guha');" > mysql/init/run.sql
