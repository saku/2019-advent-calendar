FROM php:7.2-fpm

RUN apt-get update && \
    apt-get install -y unzip gpg locales wget zlib1g-dev && \
    docker-php-ext-install pdo_mysql mysqli mbstring zip

RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

WORKDIR /app/src
COPY . .
RUN composer install

CMD ["php", "artisan", "serve", "--host", "0.0.0.0"]
