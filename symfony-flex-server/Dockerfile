FROM monsieurbiz/php:7.2-apache

RUN git clone https://github.com/monsieurbiz/server-for-symfony-flex.git /var/www/flex

WORKDIR /var/www/flex

RUN composer install -o -a --prefer-dist

RUN printf "memory_limit=-1\n" > $PHP_INI_DIR/conf.d/memory.ini

COPY files/parameters.yaml config/parameters.yaml

COPY files/vhost.conf /etc/apache2/sites-enabled/vhost.conf

COPY run.sh /usr/bin/run
RUN chmod u+x /usr/bin/run
CMD ["run", "private official contrib"]
ENTRYPOINT ["run"]
