FROM codercom/code-server

LABEL maintainer="Monsieur Biz <docker@monsieurbiz.com>"

USER root
RUN apt-get update && \
	apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common make && \
	(curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -) && \
	apt-key fingerprint 0EBFCD88 && \
	add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" && \
	apt-get update && \
	apt-get install -y docker-ce docker-ce-cli containerd.io && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	(curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose) && \
	chmod +x /usr/local/bin/docker-compose && \
	usermod -a -G docker coder

USER coder
