# Use the official PHP image as a base image
FROM php:8.2-apache

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the local project files to the container's web root directory
COPY . /var/www/html/

# Install required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Add the ServerName directive to Apache configuration
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Give necessary permissions
#RUN chown -R www-data:www-data /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache when the container starts
CMD ["apache2-foreground"]
