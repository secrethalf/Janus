#!/bin/sh
PORT=${PORT:-8088}
mkdir -p /usr/local/etc/janus
printf '[general]\nip = 0.0.0.0\nport = %s\nadmin_port = 7088\nbase_path = /janus\n' "$PORT" > /usr/local/etc/janus/janus.transport.http.cfg
exec janus
