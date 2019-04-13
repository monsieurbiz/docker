FROM codercom/code-server

LABEL maintainer="Monsieur Biz <docker@monsieurbiz.com>"

USER root
RUN apt-get update && \
	apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common && \
	(curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -) && \
	apt-key fingerprint 0EBFCD88 && \
	add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" && \
	apt-get update && \
	apt-get install -y docker-ce docker-ce-cli containerd.io && \
	usermod -a -G docker coder
