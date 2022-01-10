FROM php:5.4-apache

RUN a2enmod rewrite

RUN apt-get update \
    && apt-get install -y git zlib1g-dev \
    && docker-php-ext-install pdo pdo_mysql zip mysqli mysql \
    && docker-php-ext-enable mysqli pdo_mysql zip mysql
EXPOSE 80

RUN touch /usr/local/etc/php/conf.d/setting.ini \
    && echo "date.timezone = 'Asia/Jakarta';" >> /usr/local/etc/php/conf.d/setting.ini\
    && echo "short_open_tag = On;" >> /usr/local/etc/php/conf.d/setting.ini

