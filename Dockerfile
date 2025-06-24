# Use the official PHP Apache image
FROM php:8.2-apache

# Enable mod_rewrite (useful if you ever expand)
RUN a2enmod rewrite

# Copy all files into the container
COPY . /var/www/html/

# Set permissions (optional)
RUN chown -R www-data:www-data /var/www/html
