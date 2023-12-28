FROM php:7.4.33-fpm-buster

RUN apt-get update && \
    apt-get install -y zip apt-utils re2c g++ zlib1g zlib1g-dbg zlib1g-dev zlibc

RUN apt-get install -y cron make nano

RUN apt-get install -y --no-install-recommends libfreetype6-dev libjpeg-dev libpng-dev libwebp-dev libzip-dev  \
    # gd
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd \
    # gmp
    && apt-get install -y --no-install-recommends libgmp-dev \
    && docker-php-ext-install gmp
# pdo_mysql
RUN docker-php-ext-install pdo_mysql
# opcache
RUN docker-php-ext-enable opcache
# zip
RUN docker-php-ext-install zip
# bcmath
RUN docker-php-ext-install bcmath
# mysql
RUN docker-php-ext-install mysqli
# exif
RUN docker-php-ext-install exif
# intl
RUN apt-get install libicu-dev -y
RUN docker-php-ext-configure intl && docker-php-ext-install intl
# xdebug
RUN pecl install xdebug-3.1.0
RUN docker-php-ext-enable xdebug
# clean up
RUN apt-get autoclean -y \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/pear/

COPY ./ /var/www/html/devops/

CMD php-fpm
