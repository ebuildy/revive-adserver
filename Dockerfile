FROM php:7.3-apache-stretch

# Install mysql-client and php mysqli extension
RUN apt-get update && apt-get -y install mysql-client \
    && docker-php-source extract \
    && docker-php-ext-install mysqli \
    && docker-php-source delete \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 80
