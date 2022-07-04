FROM php:8.1.1-fpm


RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    nano \
    nginx \
    openrc \
    bash \
    systemctl \
    librdkafka-dev



RUN docker-php-ext-install pdo pdo_mysql bcmath
RUN pecl install rdkafka

RUN ln -s /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini && \
    echo "extension=rdkafka.so" >> /usr/local/etc/php/php.ini

WORKDIR /var/www

#RUN rm -rf /var/www/html
COPY . .

#RUN ln -s public html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY .docker/nginx/nginx.conf /etc/nginx/conf.d
RUN chmod -R 777 /var/www/storage/

EXPOSE 80
CMD ["php-fpm"]
CMD ["nginx", "-g", "daemon off;"]
