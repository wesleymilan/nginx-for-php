# our base image
FROM alpine:latest

# specify the port number the container should expose
EXPOSE 3000
EXPOSE 80

# User user as root
USER root

# Create App
RUN mkdir /app

# Installing Services
RUN apk update
RUN apk add bash
RUN apk add openrc
RUN mkdir /run/openrc && touch /run/openrc/softlevel
RUN rc-status

#NGinx
RUN apk add nginx
RUN rc-update add nginx

# PHP
RUN apk add php8
RUN apk add php8-fpm
RUN apk add php8-pdo_mysql
RUN apk add php8-mysqli
RUN apk add php8-pecl-imagick
RUN apk add php8-mbstring
RUN apk add php8-xmlreader
RUN apk add php8-curl
RUN apk add php8-iconv
RUN apk add php8-zip
RUN apk add php8-gd
RUN rc-update add php-fpm8

