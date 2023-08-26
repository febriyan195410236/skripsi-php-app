FROM public.ecr.aws/docker/library/php:8.1.14-alpine
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer
RUN apk update && apk add git zip unzip
WORKDIR /app
COPY composer.json .
COPY composer.lock .
RUN composer install