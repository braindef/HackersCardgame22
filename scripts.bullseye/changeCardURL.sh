#!/bin/bash

for i in $(find $1 -name '*.svg'); do sed -i 's/https:\/\/0x8.ch\/HackersCardgame21/https:\/\/0x8.ch\/HackersCardgame22/g' "$i"; done
