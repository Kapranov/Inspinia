#!/usr/bin/env bash
PORT='2274'
IP='212.26.132.49'

# rackup -o 212.26.132.30 -p 2271 config.ru
# puma -b tcp://212.26.132.30 -p 2271
# puma -b tcp://212.26.132.30:2270
# thin start -a 212.26.132.30 -p 2270
# rackup  -o $IP -p $PORT config.ru
# clear && rake tmp:clear && rake log:clear && puma -b tcp://$IP:$PORT
clear && rake tmp:clear && rake log:clear && rackup  -o $IP -p $PORT config.ru
