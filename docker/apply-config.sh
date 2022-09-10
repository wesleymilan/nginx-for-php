#!/usr/bin/env bash

rm -rf /etc/nginx
cp -R /app/config/nginx /etc
service nginx restart

rm -rf /etc/php8
cp -R /app/config/php8 /etc/php8
service php-fpm8 restart

