FROM php:7-cli

MAINTAINER Monsieur Biz <docker AT monsieurbiz DOT com>

# Install SSMTP
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y ssmtp \
    && rm -rf /var/lib/apt/lists/*

# Mailcatcher
# Note: the host "mail:25" needs to follow your own rules
RUN echo "sendmail_path = /usr/sbin/ssmtp -t" > /usr/local/etc/php/conf.d/sendmail.ini \
    && echo "mailhub=mail:25\nUseTLS=NO\nFromLineOverride=YES" > /etc/ssmtp/ssmtp.conf
