FROM php:7-fpm

RUN apt-get update

# Install Extensions
RUN apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql \
    && docker-php-ext-install session \
    && docker-php-ext-enable session \
    # && docker-php-ext-install gd \
    # && docker-php-ext-enable gd \
    # && docker-php-ext-install ldap \
    # && docker-php-ext-configure ldap --with-libdir=lib/x86_64-linux-gnu \
    # && docker-php-ext-install zip \
    # && docker-php-ext-enable zip \
    # && docker-php-ext-install imap \
    # && docker-php-ext-configure imap --with-kerberos --with-imap-ssl