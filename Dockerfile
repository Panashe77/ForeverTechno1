FROM php:7.4-apache

# Copy your application files from the new folder to the Apache document root
COPY EcommerceDuplicate /var/www/html/

EXPOSE 80

CMD ["apache2-foreground"]
