#!/bin/bash
set -e

SERVER_PID=tmp/pids/server.pid
if [ -f "$SERVER_PID" ]; then
    rm -rf "$SERVER_PID"
fi

exec "$@"
