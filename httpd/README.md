# Apache

## Supported tags and respective `Dockerfile` links

* `latest` [(Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/httpd/Dockerfile)

## Reference

Please refer to [the official library on docker hub](https://hub.docker.com/_/httpd/).

## For which kind of app?

We use this image when we want apache with PHP-FPM mostly.

If you want Apache with mod PHP then you should use [our dedicated images of PHP](https://hub.docker.com/r/monsieurbiz/php/).

## HTTP2 ready

We enabled the HTTP2 modules. Don't forget that you have to secure your application before using the HTTP2 protocol.

## Virtualhosts

You can copy all your virtualhosts in `/usr/local/apache2/sites-enabled/`:

```
COPY vhost.conf /usr/local/apache2/sites-enabled/
```

## Work with correct rights on filesystem

You can use this snippet in your own `Dockerfile`:

```
# Use www-data with correct UID
ARG USER_UID=1000
RUN usermod -u $USER_UID www-data
```

Then you can override the `USER_UID` via docker-compose or directly via `--build-arg` when you build the image using docker.

## Maintainer

The whole team of [Monsieur Biz](https://github.com/monsieurbiz) maintains these images.

## Tests

This Apache image is built by Github Actions when a change is made into the `httpd/` directory.
