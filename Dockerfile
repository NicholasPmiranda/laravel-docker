FROM php:8.1-apache
RUN docker-php-ext-install pdo_mysql
RUN a2enmod rewrite

ADD . /var/www
ADD ./public /var/www/html
RUN chmod -R 777 /var/www/storage/
