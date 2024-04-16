#!/bin/bash

service mariadb start

sleep 2
mysql < /docker-entrypoint-initdb.d/init.sql
service mariadb stop
mysqld --user=mysql --console