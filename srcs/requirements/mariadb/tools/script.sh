#!/bin/bash

if [ ! -f /var/lib/mysql/password_changed ]; then
    echo "the first run ################"
    service mariadb start
    mysql -u'root' -p"${SQL_ROOT_PASSWORD}" -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
    mysql -u'root' -p"${SQL_ROOT_PASSWORD}" -e "CREATE DATABASE IF NOT EXISTS ${SQL_NAME};"
    mysql -u'root' -p"${SQL_ROOT_PASSWORD}" -e "CREATE USER IF NOT EXISTS '${SQL_USER}'@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
    mysql -u'root' -p"${SQL_ROOT_PASSWORD}" -e "GRANT ALL PRIVILEGES ON ${SQL_NAME}.* TO '${SQL_USER}'@'%';"
    mysql -u'root' -p"${SQL_ROOT_PASSWORD}" -e "FLUSH PRIVILEGES;"
    mysqladmin -u'root' -p"${SQL_ROOT_PASSWORD}" shutdown
    touch /var/lib/mysql/password_changed
fi

exec mysqld_safe