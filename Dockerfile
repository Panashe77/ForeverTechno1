FROM php:7.4-apache

# Copy your application files from the Ecommerce Duplicate directory to the Apache document root
COPY "Ecommerce Duplicate" /var/www/html/

EXPOSE 80

CMD ["apache2-foreground"]
