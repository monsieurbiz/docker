FROM ruby:2.7.0

# Install program to configure locales
RUN apt-get update && \
    apt-get install -y locales libxml2-dev && \
    dpkg-reconfigure locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8

# Install needed default locale for Makefly
RUN echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen && \
  locale-gen

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN gem install bundler jekyll github-pages jekyll-archives nokogiri

COPY files/server.sh /server.sh
RUN chmod +x /server.sh

VOLUME /app

EXPOSE 4000

CMD /server.sh
ENTRYPOINT /server.sh
