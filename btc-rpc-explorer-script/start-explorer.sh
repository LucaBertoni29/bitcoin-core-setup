#!/bin/bash

pushd /home/luca/btc-rpc-explorer > /dev/null

/usr/bin/screen -X -S explorer quit

/usr/bin/screen -d -m -S explorer ./explorer.sh

popd > /dev/null
