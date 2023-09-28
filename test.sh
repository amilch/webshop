#!/usr/bin/env sh
set -x

sudo docker-compose exec catalog php artisan test
sudo docker-compose exec warehouse php artisan test
sudo docker-compose exec billing php artisan test
sudo docker-compose exec cart php artisan test
