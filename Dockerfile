FROM php:8.1.1-fpm-alpine

WORKDIR /var/www
COPY . .

RUN rm -rf /var/www/html
RUN ln -s public html
RUN chown -R www-data:www-data /var/www

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN chmod -R 777 /var/www/storage/

EXPOSE 9000
CMD ["php-fpm"]
