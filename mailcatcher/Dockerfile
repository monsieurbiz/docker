FROM ruby:3.0-alpine

LABEL maintainer="Monsieur Biz <docker@monsieurbiz.com>"

RUN apk add --no-cache --virtual .build-dependencies \
    build-base \
    g++ \
    make \
    musl-dev \
    openssl-dev \
    sqlite-dev

RUN gem install mailcatcher --no-document && \
    rm -rf $GEM_HOME/cache/*

EXPOSE 1025 1080

CMD ["mailcatcher", "--smtp-ip=0.0.0.0", "--smtp-port=1025", "--http-ip=0.0.0.0", "--http-port=1080", "-f"]
