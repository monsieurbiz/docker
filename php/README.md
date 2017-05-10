# Supported tags and respective `Dockerfile` links

* `5-apache` [(5/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/5/apache/Dockerfile)
* `5-fpm` [(5/fpm/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/5/fpm/Dockerfile)
* `7-apache` [(7/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7/apache/Dockerfile)
* `7-fpm` [(7/fpm/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7/fpm/Dockerfile)
* `7.0-apache` [(7.0/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.0/apache/Dockerfile)
* `7.0-fpm` [(7.0/fpm/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.0/fpm/Dockerfile)

# Reference

Please refer to [the official library on docker hub](https://hub.docker.com/_/php/).

# What difference?

We have added a lot of PHP extensions to make the images compatible with Magento (as example).

Composer is installed by default and these images will be rebuild each time a new version is available to keep composer up-to-date.

Blackfire probe is setup by default if you have the [container blackfire](https://hub.docker.com/r/blackfire/blackfire/).

We also have added some tools: `vim`, `ssmtp`, `zip`, `unzip`, `git` and `mysql` (client).

# Work with correct rights on filesystem

You can use this snippet in your own `Dockerfile`:

```
# Use www-data with correct UID
ARG USER_UID=1000
RUN usermod -u $USER_UID www-data
```

Then you can override the `USER_UID` via docker-compose or directly via `--build-arg` when you build the image using docker.

# Maintainer

The whole team of [Monsieur Biz](https://github.com/monsieurbiz) maintains these images.
