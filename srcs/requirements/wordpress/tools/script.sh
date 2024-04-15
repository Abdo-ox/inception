#!/bin/bash
cp -nR wordpress/* /var/www/html
rm -rf wordpress latest.zip
php-fpm8.2 -F