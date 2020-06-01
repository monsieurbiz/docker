FROM helder/ruby:2.2

LABEL maintainer="Monsieur Biz <docker@monsieurbiz.com>"

RUN gem install mailcatcher --no-rdoc --no-ri

EXPOSE 1025 1080

CMD ["mailcatcher", "--smtp-ip=0.0.0.0", "--smtp-port=1025", "--http-ip=0.0.0.0", "--http-port=1080", "-f"]

