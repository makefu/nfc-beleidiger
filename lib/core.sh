say(){
  tmpfile=$(mktemp)
  echo "$@" > $tmpfile
  curl -i -H "content-type: text/plain" -X POST -d "@$tmpfile" gobbelz.shack/say/
  rm "$tmpfile"
}
start_stream(){
  python /opt/nfc-beleidiger/lib/mpd.py "$1"
}
clear_playlist(){
 python /opt/nfc-beleidiger/lib/clear-mpd.py --force
}
