FROM debian:buster-slim

ENV PHP_INI_DIR=/usr/local/etc/php \
    PHP_VERSION=8.0.3

# prevent Debian's PHP packages from being installed
# https://github.com/docker-library/php/pull/542
RUN set -eux; \
	{ \
		echo 'Package: php*'; \
		echo 'Pin: release *'; \
		echo 'Pin-Priority: -1'; \
	} > /etc/apt/preferences.d/no-debian-php

RUN set -eux; \
	apt-get update; \
	apt-get install -y --no-install-recommends \
        build-essential \
        autoconf \
        automake \
        bison \
        flex \
        re2c \
        gdb \
        libtool \
        make \
        pkgconf \
        valgrind \
        git \
        libxml2-dev \
        libsqlite3-dev \
        ca-certificates \
		curl \
		xz-utils \
	; \
	rm -rf /var/lib/apt/lists/*

RUN set -eux; \
    cd /usr/src; \
    git clone --progress https://github.com/php/php-src.git

RUN set -eux; \
    cd /usr/src/php-src; \
    git pull; \
    git checkout php-$PHP_VERSION; \
    ./buildconf --force; \
    ./configure --enable-debug \
        --with-config-file-path="$PHP_INI_DIR" \
	    --with-config-file-scan-dir="$PHP_INI_DIR/conf.d" \
        --enable-option-checking=fatal \
    ; \  
    make; \
    make install

 ENV LC_ALL=C.UTF-8 \
     LANG=C.UTF-8
