![Screenshot](https://github.com/monsieurbiz/docker/raw/master/nginx-ngrok/screen.png)

This image provides an easy solution to expose your files over the Internet (using ngrok).

# Supported tags and respective `Dockerfile` links

* `latest` [(Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/nginx-ngrok/Dockerfile)

# Usage

First, you probably need to run [ngrok](https://ngrok.com) on your machine once.  
If you want to login on ngrok please do.

You'll be able to mount the `~/.ngrok2` (where your ngrok config and auth token are) into the container.

Easy:

```bash
docker run --rm -ti -v `pwd`:/local -v ~/.ngrok2:/root/.ngrok2 monsieurbiz/nginx-ngrok
```

As simple as this.



Enjoy!