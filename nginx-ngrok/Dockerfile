FROM nginx

LABEL maintainer="Monsieur Biz <docker@monsieurbiz.com>"

RUN curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | \
    tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && \
    echo "deb https://ngrok-agent.s3.amazonaws.com bullseye main" | \
    tee /etc/apt/sources.list.d/ngrok.list && \
    apt update && apt install -y ngrok

COPY files/vhost.conf /etc/nginx/conf.d/default.conf
COPY files/run.sh /run.sh

RUN chmod +x /run.sh

VOLUME /root/.ngrok2
VOLUME /local

EXPOSE 4040

CMD ["/run.sh"]

