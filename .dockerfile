FROM drupal:9-apache

# Update packages and install mysql-client
RUN apt-get update && apt-get upgrade -y && apt-get -y install mysql-client

# Copy application files
COPY . /var/www/html

# Define the working directory
WORKDIR /var/www/html
