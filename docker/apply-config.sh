#!/usr/bin/env bash

rm -rf /etc/nginx
cp -R /app/config/nginx /etc
service nginx restart

rm -rf /etc/php81
cp -R /app/config/php81 /etc/php81
service php-fpm81 restart

