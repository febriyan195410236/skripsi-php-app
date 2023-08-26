FROM public.ecr.aws/docker/library/php:8.1.14
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer
RUN apt-get update && apt-get install git zip unzip -y
WORKDIR /app
COPY composer.json .
COPY composer.lock .
RUN composer install