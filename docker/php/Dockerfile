FROM php:8.0-fpm

RUN pecl channel-update pecl.php.net \
  && pecl install xdebug \
  && docker-php-ext-enable xdebug \
  && sed -i -e 's/^\;zend_extension/zend_extension/g' /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

COPY php.ini /usr/local/etc/php/

VOLUME /var/www
WORKDIR /var/www/html

EXPOSE 9000
