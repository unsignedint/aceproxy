#!/bin/sh
IPADDR=`docker-machine ip`
# docker ps --filter "ancestor=aceproxy" --format '{{.Ports}}'

URL="http://${IPADDR}:32768/pid/$1/stream.mp4"

echo "Opening $URL..."
open -a vlc --args "$URL"

