#!/bin/bash

cd /app/docs
bundle install

JEKYLL_ENV=production bundle exec jekyll build --config _config.yml
