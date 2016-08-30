""" usage: run_stream [--force] URL
"""

if __name__ == "__main__":
    from relaxxapi.relaxxapi import relaxx
    from docopt import docopt
    d = docopt(__doc__)
    url = d['URL']
    r = relaxx(relaxxurl="http://lounge.mpd.shack/",timeout=30)
    print("adding song {}".format(url))
    r.add_song(url)
    if not r.get_current():
        print("nothing is running, starting stream")
        r.play_last()
    else:
        if d['--force']:
            print("something is running, playing anyway")
            r.play_last()
        else:
            print("song appended, be patinent")
        
