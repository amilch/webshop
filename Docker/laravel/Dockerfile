FROM composer:latest as composer

FROM php:8.1-alpine

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN apk add multirun

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/entrypoint.sh"]
