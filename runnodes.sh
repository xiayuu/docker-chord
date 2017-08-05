#!/bin/bash

python /app/chord/chord/chordnode.py -b `ip -4 addr show eth0 | grep /24 | grep -oP '(?<=inet\s)\d+(\.\d+){3}'`:8091 -p bootnode:8090 -s log:8089 -l 2
