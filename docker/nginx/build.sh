#!/usr/bin/env bash

# Remove Old Image
docker rm -f php_nginx

# No Cache Build
docker build --no-cache -t php_nginx -f docker/nginx/Dockerfile .

