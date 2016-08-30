#!/bin/sh
cd "$(dirname "$(readlink -f "$0")")"
. ../lib/core.sh

# color
echo 100 100 0 | nc localhost 5007
say "Hallo ma ke fuh" &
