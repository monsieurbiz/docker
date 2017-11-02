#!/bin/bash

nginx -g "daemon on;"

/usr/bin/ngrok http 80

