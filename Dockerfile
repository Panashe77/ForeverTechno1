FROM php:7.4-apache

# Install and enable mysqli extension
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy your application files from the renamed folder to the Apache document root
COPY EcommerceDuplicate /var/www/html/

EXPOSE 80

CMD ["apache2-foreground"]
