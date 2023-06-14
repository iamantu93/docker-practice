FROM php:8.0-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli

# Copy application files to container
COPY app/ /var/www/html/public
RUN apt update && apt install mysql* -y


# Set up Apache web server configuration
RUN a2enmod rewrite
COPY apache-config.conf /etc/apache2/sites-available/000-default.conf

# Start Apache web server
CMD ["apache2-foreground"]

