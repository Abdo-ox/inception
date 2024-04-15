#!/bin/bash
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/my.key -out /etc/nginx/ssl/my.crt -subj "/C=MO/L=KH/O=1337/OU=student/CN=ajari.1337.ma" > /dev/null 2>&1
nginx -g 'daemon off;'
