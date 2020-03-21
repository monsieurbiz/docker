## Supported tags and respective `Dockerfile` links

* `5-apache` [(5/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/5/apache/Dockerfile)
* `5-fpm` [(5/fpm/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/5/fpm/Dockerfile)
* `5-cli` [(5/cli/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/5/cli/Dockerfile)
* `7-apache` [(7/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7/apache/Dockerfile)
* `7-fpm` [(7/fpm/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7/fpm/Dockerfile)
* `7-cli` [(7/cli/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7/cli/Dockerfile)
* `7.0-apache` [(7.0/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.0/apache/Dockerfile)
* `7.0-fpm` [(7.0/fpm/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.0/fpm/Dockerfile)
* `7.0-cli` [(7.0/cli/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.0/cli/Dockerfile)
* `7.1-apache` [(7.1/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.1/apache/Dockerfile)
* `7.1-fpm` [(7.1/fpm/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.1/fpm/Dockerfile)
* `7.1-cli` [(7.1/cli/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.1/cli/Dockerfile)
* `7.2-apache` [(7.2/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.2/apache/Dockerfile)
* `7.2-fpm` [(7.2/fpm/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.2/fpm/Dockerfile)
* `7.2-cli` [(7.2/cli/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.2/cli/Dockerfile)
* `7.3-apache` [(7.3/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.3/apache/Dockerfile)
* `7.3-fpm` [(7.3/fpm/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.3/fpm/Dockerfile)
* `7.3-cli` [(7.3/cli/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.3/cli/Dockerfile)
* `7.4-apache` [(7.4/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.4/apache/Dockerfile)
* `7.4-fpm` [(7.4/fpm/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.4/fpm/Dockerfile)
* `7.4-cli` [(7.4/cli/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7.4/cli/Dockerfile)

## Reference

Please refer to [the official library on docker hub](https://hub.docker.com/_/php/).

## What difference?

We have added a lot of PHP extensions to make the images compatible with Magento (as example).

Composer is installed by default and these images will be rebuild each time a new version is available to keep composer up-to-date.

Blackfire probe is setup by default if you have the [container blackfire](https://hub.docker.com/r/blackfire/blackfire/).

We also have added some tools: `vim`, `ssmtp`, `zip`, `unzip`, `git` and `mysql` (client).

## Work with correct rights on filesystem

You can use this snippet in your own `Dockerfile`:

```
# Use www-data with correct UID
ARG USER_UID=1000
RUN usermod -u $USER_UID www-data
```

Then you can override the `USER_UID` via docker-compose or directly via `--build-arg` when you build the image using docker.

## Use crontab

The `cli` versions don't have cron.

You can put all the crons you need into the `/etc/crontab` file.

`Dockerfile` examples:

```
COPY files/crontab /etc/cron.d/my-crontab
```

or

```
RUN echo "* * * * * www-data echo \$(date) > /tmp/foo" >> /etc/crontab
```

*Note: In the case you use your own file in `/etc/cron.d/`, don't forget to add
the `SHELL` you want to use and the `PATH` you need,n the top of your cron file, like this:

```
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
SHELL=/bin/bash
```

If you want to suppress the mail sent by cron, you can add `MAILTO=` at the beginning of your own crontab.

## Maintainer

The whole team of [Monsieur Biz](https://github.com/monsieurbiz) maintains these images.

## Tests

These PHP images are built by Github Actions when a change is made into the `php/` directory.
