FROM debian:stretch

LABEL maintainer "Monsieur Biz <docker@monsieurbiz.com>"

RUN apt-get update && apt-get install -y apt-transport-https \
    && apt-get -y install gnupg2 \
    && apt-key adv --no-tty --recv-keys 24765BBD8E16EB44 \
    && echo "deb https://packages.redirection.io/deb any main" | tee -a /etc/apt/sources.list.d/packages_redirection_io_deb.list \
    && echo "deb https://packages.redirection.io/deb stretch main" | tee -a /etc/apt/sources.list.d/packages_redirection_io_deb.list \
    && apt update && apt install redirectionio-agent \
    && rm -rf /var/lib/apt/lists/*