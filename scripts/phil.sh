#!/bin/sh
cd "$(dirname "$(readlink -f "$0")")"
. ../lib/core.sh

# color
echo 100 0 100 | nc localhost 5007
start_stream "http://stream2.friskyradio.com:8000/frisky_mp3_hi"
say "FRISKI radio gestartet" &
