# -*- coding: utf-8 -*-

hours = ( 
    "Doze",
    "Uma",
    "Duas",
    "Tres",
    "Quatro",
    "Cinco",
    "Seis",
    "Sete",
    "Oito",
    "Nove",
    "Dez",
    "Onze",
    "Twelve",
    "Uma",
    "Duas",
    "Tres",
    "Quatro",
    "Cinco",
    "Seis",
    "Sete",
    "Oito",
    "Nove",
    "Dez",
    "Onze"
    )

# $ will be replaced by plural if h is in hoursplural
hoursplural = (2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23)
plural="s"

# 3 will be replaced by f if h is in hoursfem or by m else
hoursfem = ()
m = "HERP"
f = "DERP"

# % will be replaced by the current hour, ! will be replaced by the next hour
minutes = {
    0: "% Hora$",
    #0.5: "%", # This way, 12:00 will say "twelve o'clock" and 12:01 will say "past twelve", not "exactly past twelve"
    10: "Dez depois da$ %",
    15: "Quarto depois da$ %",
    20: "Vinte depois da$ %",
    30: "% e meia",
    40: "Vinte para !",
    45: "Quarto para !",
    50: "Dez para !",
    60: "!"
    }

almost = "%"
exactly = "%"
