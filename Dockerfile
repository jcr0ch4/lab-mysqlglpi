FROM php:7.2-apache
RUN docker-php-ext-install\
    mysqli mbstring zip gd curl fileinfo json xmlrpc APCu\
    session zlib simplexml xml intl ldap openssl 
RUN apt-get update -y && apt-get install -y sendmail libpng-dev
RUN apt-get update && \
    apt-get install -y \
        zlib1g-dev ldap-utils libldap2-dev