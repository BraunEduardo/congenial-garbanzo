#!/bin/bash

# Permissões
chmod -R 775 /var/www/app/storage /var/www/app/bootstrap/cache

# Daemons
/etc/init.d/supervisor start
/etc/init.d/cron start
/etc/init.d/redis-server start
/etc/init.d/php8.3-fpm start
/etc/init.d/nginx start


cd /var/www/app

cp .env.example .env

composer install
php artisan key:generate
npm install
npm run build
php artisan migrate
php artisan optimize

# Loop
while true; do sleep 777; done
