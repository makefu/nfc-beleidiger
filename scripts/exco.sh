#!/bin/sh
cd "$(dirname "$(readlink -f "$0")")"
. ../lib/core.sh

# color
echo 100 0 100 | nc localhost 5007
start_stream "http://pub9am.di.fm:80/di_techhouse"
say "Techhouse auf EM PE DEH gestartet" &
