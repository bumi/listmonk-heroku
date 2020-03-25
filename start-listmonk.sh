#!/usr/bin/env bash

if [ ! -f config/listmonk.toml ]; then
  echo "Compiling listmonk config file"
  erb config/listmonk.toml.erb > config/listmonk.toml
fi
if [ ! -f config/htpasswd ]; then
  echo "Writing basic auth file"
  printf "$APP_USERNAME:$(openssl passwd -crypt $APP_PASSWORD)\n" >> config/htpasswd
fi

touch /tmp/app-initialized
./listmonk --config config/listmonk.toml
