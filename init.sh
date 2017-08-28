#!/bin/bash

mkdir -p /srv/data
unzip /tmp/data/data.zip -d /srv/data

CURRENT_TIME=$(head -1 /tmp/data/options.txt) \
    tarantool /opt/tarantool/app.lua
