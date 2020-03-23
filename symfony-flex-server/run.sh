#!/bin/bash

if [[ "$1" == "run" ]]; then
    shift
fi
PARAMS=$@

echo Init with $PARAMS

cd /var/www/flex && \
    php bin/console recipe:init $PARAMS

/usr/local/bin/apache2-foreground

