#!/bin/sh
PORT=${PORT:-8088}
cat > /usr/local/etc/janus/janus.transport.http.cfg << EOF
[general]
ip = 0.0.0.0
port = $PORT
admin_port = 7088
base_path = /janus
EOF
exec janus
