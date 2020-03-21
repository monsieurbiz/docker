FROM php:7-cli

LABEL maintainer="Monsieur Biz <docker@monsieurbiz.com>"

# Install SSMTP
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y msmtp \
    && rm -rf /var/lib/apt/lists/*

# Mailcatcher
# Note: the host "mail:25" needs to follow your own rules
RUN echo "sendmail_path = '/usr/bin/msmtp --host=mail --port=25 --read-envelope-from --tls=off -t'" > /usr/local/etc/php/conf.d/sendmail.ini
