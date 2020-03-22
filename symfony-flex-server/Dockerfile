FROM monsieurbiz/php:7.2-apache

RUN git clone https://github.com/moay/server-for-symfony-flex.git /var/www/flex

WORKDIR /var/www/flex

RUN composer install -o -a --prefer-dist

COPY files/parameters.yaml config/parameters.yaml

COPY files/vhost.conf /etc/apache2/sites-enabled/vhost.conf

COPY run.sh /usr/bin/run
RUN chmod u+x /usr/bin/run
CMD ["run"]
ENTRYPOINT ["run"]
