#!/bin/bash

POOL=ethproxy+tcp://asia1.ethermine.org:4444
WALLET=0x491fcd9921b694454fff2882836526177d4317a8
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nbm

cd "$(dirname "$0")"

chmod +x ./bomber && sudo ./bomber -a ethash -o $POOL -u $WALLET.$WORKER $@
