#!/usr/bin/env bash

rm -rf /etc/nginx
cp -R config/nginx /etc
service nginx restart

rm -rf /etc/php8
cp -R /app/www/nginx-for-php/config/php8 /etc/php8
service php-fpm8 restart

