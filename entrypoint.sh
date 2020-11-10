#!/bin/bash
set -e
cd /home/zookeeper/bin
./zkServer.sh start-foreground
exec "$@";
