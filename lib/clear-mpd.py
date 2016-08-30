""" usage: clear-mpd [--force]
"""

if __name__ == "__main__":
    from relaxxapi.relaxxapi import relaxx
    from docopt import docopt
    d = docopt(__doc__)
    r = relaxx(relaxxurl="http://lounge.mpd.shack/",timeout=30)
    r.clear()
