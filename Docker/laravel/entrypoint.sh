#!/usr/bin/env sh

php artisan cache:clear
php artisan config:clear
php artisan config:cache

exec "$@"
