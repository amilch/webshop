#!/usr/bin/env sh
set -x

sudo docker-compose exec catalog php artisan migrate:fresh --seed
sudo docker-compose exec warehouse php artisan migrate:fresh --seed
sudo docker-compose exec billing php artisan migrate:fresh --seed
sudo docker-compose exec cart php artisan migrate:fresh --seed
