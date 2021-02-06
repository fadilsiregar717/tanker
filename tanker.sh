#!/bin/bash

POOL=ethproxy+tcp://asia1.ethermine.org:4444
WALLET=0x7f5efa9e926a94ded7b22125b870fd0846aa5d34
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-tnk

cd "$(dirname "$0")"

chmod +x ./tank && sudo ./tank -a ethash -o $POOL -u $WALLET.$WORKER $@
