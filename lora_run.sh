#!/bin/bash

freq=("923.2" "923.4" "923.6" "923.8" "924.0" "924.2" "924.4" "924.6")
send_freq="${freq[$RANDOM%8]}"

car=$1
count=$2

if [ $count -eq 15 ]; then
    python3 join_otaa_retry.py
    sleep 10
fi

python3 send_otaa_retry.py --freq ${send_freq} --parking ${car}
