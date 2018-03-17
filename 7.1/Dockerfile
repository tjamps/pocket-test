FROM php:7.1-cli

MAINTAINER Rémi T'JAMPENS <remi.tjampens@gmail.com>

RUN apt-get update \
    && apt-get install -y \
        git \
        libicu-dev \
        unzip \
        wget \
        zlib1g-dev \
    && docker-php-ext-configure intl \
    && docker-php-ext-install -j$(nproc) \
        intl \
        pdo_mysql \
        opcache \
        zip \
    && rm -rf /var/lib/apt/lists/*


COPY common/install-composer.sh /usr/local/bin/install-composer
RUN install-composer

COPY common/php.ini /usr/local/etc/php/php.ini
