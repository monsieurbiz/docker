# Supported tags and respective `Dockerfile` links

* `5-apache` [(5/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/5/apache/Dockerfile)
* `5-fpm` [(5/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/5/fpm/Dockerfile)
* `7-apache` [(7/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7/apache/Dockerfile)
* `7-fpm` [(7/apache/Dockerfile)](https://github.com/monsieurbiz/docker/blob/master/php/7/fpm/Dockerfile)

# Reference

Please refer to [the official library on docker hub](https://hub.docker.com/_/php/).

# What difference?

We have added a lot of PHP extensions to make the images compatible with Magento (as example).

Composer is installed by default and these images will be rebuild each time a new version is available to keep composer up-to-date.

# Maintainer

The whole team of [Monsieur Biz](https://github.com/monsieurbiz) maintains these images.
