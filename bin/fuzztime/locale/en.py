# -*- coding: utf-8 -*-

hours = ( 
    "twelve",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven",
    "twelve",
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten",
    "eleven"
    )

# $ will be replaced by plural if h is in hoursplural
hoursplural = ()
plural="USELESS HERE"

# 3 will be replaced by f if h is in hoursfem or by m else
hoursfem = ()
m = "HERP"
f = "DERP"

# % will be replaced by the current hour, ! will be replaced by the next hour
minutes = {
    0: "% o'clock",
    0.5: "past %", # This way, 12:00 will say "twelve o'clock" and 12:01 will say "past twelve", not "exactly past twelve"
    10: "ten past %",
    15: "quarter past %",
    20: "twenty past %",
    30: "half past %",
    40: "twenty to !",
    45: "quarter to !",
    50: "ten to !",
    60: "!"
    }

almost = "almost %"
exactly = "exactly %"
