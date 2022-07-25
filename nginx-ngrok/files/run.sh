#!/bin/bash

nginx -g "daemon on;"

/usr/local/bin/ngrok http 80

