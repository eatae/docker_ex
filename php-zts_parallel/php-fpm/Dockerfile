FROM mohsenmottaghi/php-fpm-zts:latest

RUN pecl install parallel && \
	docker-php-ext-enable parallel && \
	EXTENSION_DIR=`php-config --extension-dir 2>/dev/null` && \
	echo "=====================================================================" && \
	echo "Finished building. SHA256:" && \
	sha256sum "$EXTENSION_DIR/parallel.so" | sed "s/  /\n/" && \
	echo "====================================================================="

RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libpq-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    jpegoptim optipng pngquant gifsicle \
    vim \
    unzip \
    git \
    curl

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd pdo pdo_mysql mysqli

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# xdebug
RUN pecl install xdebug-2.9.8 \
    && docker-php-ext-enable xdebug

# add php.imi
ADD ./php.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/phpunit
