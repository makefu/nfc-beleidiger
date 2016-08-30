#!/bin/sh
cd "$(dirname "$(readlink -f "$0")")"
. ../lib/core.sh

# color
echo 100 0 100 | nc localhost 5007
clear_playlist
say "Abspielliste wurde gelöscht" &
