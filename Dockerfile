FROM php:7.2-apache
RUN apt-get update -y && apt-get install -y sendmail libpng-dev
RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev ldap-utils libldap2-dev libxml2-dev
RUN docker-php-ext-install mysqli zip gd
RUN docker-php-ext-install xmlrpc
RUN docker-php-ext-install intl
RUN docker-php-ext-install ldap
