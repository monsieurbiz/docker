#!/bin/sh

cd /var/www/flex && \
    php bin/console recipe:init private

/usr/local/bin/apache2-foreground

