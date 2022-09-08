# nginx-for-php
A Nginx config repository for PHP backed web server

Full **portuguese** tutorial is here: https://youtube.com/XXXXXXX

Full **english** tutorial is here: https://youtube.com/XXXXXXX

# 1st Step: Domain name
In your local host machine add the following lines to your `/etc/hosts` file in order to find the application.
```
127.0.0.1   www.php.dvp
```

# 2nd Step: Preparing the environment
Clone the docker repository `git clone https://github.com/wesleymilan/docker-nginx.git`

Clone this repository into `www/` folder:
```shell
cd docker-nginx/www
git clone https://github.com/wesleymilan/nginx-for-php.git
cd ..
```

Build and run the docker container:
```shell
./docker/build.sh
docker-compose up -d
```

# 3rd Step: Installing the services

Login into the NGinx container:
```shell
./docker/nginx/ssh.sh
```

Install PHP and any other dependency you need.
```shell
apk add php8
apk add php8-pdo_mysql
apk add php8-pecl-imagick
```

Note: Depending on your OS you can use `apt`, `apt-get`, `yum` or the package manager of your preference. For all
installation method of NodeJS please visit https://nodejs.org/en/download/package-manager/

# 4th Step: Installing PHP-FPM

PHP-FPM is a process manager to control and keep your application running even if it crashes for some reason.

```shell
apk add php-fpm
rc-update add php-fpm8
```

# 5th Step: NGinx config

Customize your NGinx files under `config/nginx`.

After customizing your NGinx, from inside NGinx container go into this repo folder `cd /app/www/nginx-for-php`
and run the script to apply the NGinx config files `./apply-config.sh`.

NOTES: The most important params here is the `root` directory what should point to the exact path of your application.
And the socket mode what can be a sock file or a socket connection, whatever you choose it must match with your PHP-FPM
configuration.

# 6th Step: PHP-FPM config

Customize your PHP files under `config/php8`.

After customizing your PHP, from inside NGinx container go into this repo folder `cd /app/www/nginx-for-php`
and run the script to apply the PHP config files `./apply-config.sh`.

NOTES: The most important parameters here are `chdir` that should point to the exact path of your application.
`listen.owner` and `listen.group` that should match with your NGinx user and group to avoid permission error.

# 7th Step: Check your browser

Open http://www.php.dvp/ and check the headers on your devtools, and you should see this entry `Server: nginx`.


# Contact

For more tutorials and content about applications, Cloud Computing, Security and performance please follow me on my
channels/social media:

YouTube:
- Um Inventor Qualquer (Português): https://www.youtube.com/c/UmInventorQualquer
- Wesley Milan (Português): https://www.youtube.com/c/WesleyMilan
- Wesley Milan (English): https://www.youtube.com/channel/UCAyRxlnOwFi76XWKpT6k08g

Social:
- Linked-In: https://www.linkedin.com/in/wesleymilan/
- Instagram (Português): https://www.instagram.com/uminventorqualquer/
