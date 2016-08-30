#!/bin/sh
cd "$(dirname "$(readlink -f "$0")")"
. ../lib/core.sh

# color
echo 100 0 100 | nc localhost 5007
start_stream "http://ice.somafm.com/groovesalad"
say "appending groovesalad stream to lounge mpd" &
