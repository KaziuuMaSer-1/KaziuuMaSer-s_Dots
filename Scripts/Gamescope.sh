#!/bin/bash

# Konfiguracja (zmień pod swój monitor i grę)
SZEROKOSC=1920
WYSOKOSC=1080
GRA="vkcube" # Tutaj wpisz komendę startową gry (np. steam steam://rungameid/1234)

# Odpalenie gamescope w pełnym ekranie (-f)
gamescope -w $SZEROKOSC -h $WYSOKOSC -f -- $GRA
