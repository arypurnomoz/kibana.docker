#!/bin/sh

if [ ! -z "$CONFIG_URL" ]; then
  if ! wget $CONFIG_URL -O /html/config.js; then
    echo "failed to retrieve config $CONFIG_URL"
    exit 1
  fi
fi

exec nginx -g daemon off
