#!/usr/bin/python3
# -*- coding: utf-8 -*-
"""Outputs current time as an approximation"""

import sys
import time

# Locale
sys.path=["locale", "locale"]+sys.path
import pt as locale

def fuzz(h,m):
    """Outputs given time as an approximation"""
    diff = 60
    for i in list(locale.minutes.keys()):
        tmpdiff=m-i
        if abs(tmpdiff) < abs(diff):
            diff=tmpdiff
            ret=locale.minutes[i].replace("%", locale.hours[h]).replace("!", locale.hours[(h+1)%24])
    if h in locale.hoursplural:
        ret=ret.replace("$", locale.plural)
    else:
        ret=ret.replace("$", "")
    if h in locale.hoursfem:
        ret=ret.replace("3", locale.f)
    else:
        ret=ret.replace("3", locale.m)

    if diff == 0:
        ret=locale.exactly.replace("%", ret)
    elif diff < 0:
        ret=locale.almost.replace("%", ret)
    if partypartyparty and h == 0 and m == 0:
        ret="PARTYPARTYPARTY"
    return ret

# SUPER SECRET EASTER EGG
partypartyparty=True
# OH GOD I CAN'T WAIT TO SEE WHAT IT DOES

if __name__ == "__main__":
    t=time.localtime(time.time())
    print(fuzz(t[3],t[4]))
