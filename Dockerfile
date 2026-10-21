ARG BASE=docker.io/library/wordpress:php8.5-fpm
FROM ${BASE}
COPY --from=docker.io/mlocati/php-extension-installer:2 /usr/bin/install-php-extensions /usr/local/bin/
# imagick, gd, intl, zip, bcmath, exif, mysqli, opcache already ship in the base image.
RUN install-php-extensions ftp gmp pdo_mysql igbinary ssh2 redis
LABEL org.opencontainers.image.source=https://github.com/asm0dey/wordpress-fpm \
      org.opencontainers.image.description="Official WordPress php-fpm image with ftp, gmp, pdo_mysql, igbinary, ssh2 and redis"
