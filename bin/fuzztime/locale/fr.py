# -*- coding: utf-8 -*-

hours = ( 
    "minuit",
    "une heure",
    "deux heures",
    "trois heures",
    "quatre heures",
    "cinq heures",
    "six heures",
    "sept heures",
    "huit heures",
    "neuf heures",
    "dix heures",
    "onze heures",
    "midi",
    "une heure",
    "deux heures",
    "trois heures",
    "quatre heures",
    "cinq heures",
    "six heures",
    "sept heures",
    "huit heures",
    "neuf heures",
    "dix heures",
    "onze heures",
    )

# $ will be replaced by plural if h is in hoursplural
hoursplural = (2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23)
plural="s"

# 3 will be replaced by f if h is in hoursfem or by m else
hoursfem = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17, 18,19, 20, 21, 22, 23)
f = "e"
m = ""

# % will be replaced by the current hour, ! will be replaced by the next hour
minutes = { 
    0: "%",
    0.5: "% passé3$",
    5: "% cinq",
    10: "% dix",
    15: "% et quart",
    20: "% vingt",
    30: "% et demi",
    35: "! moins vingt-cinq",
    40: "! moins vingt",
    45: "! moins le quart",
    50: "! moins dix",
    55: "! moins cinq",
    60: "!"
    }

almost = "presque %"
exactly = "exactement %"
