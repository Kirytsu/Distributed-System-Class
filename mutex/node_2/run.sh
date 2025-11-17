#!/bin/bash

python3 ../program/kv.py --id 2 --tcp 11000 --udp 11000 \
    --peers 192.168.122.10:10000=1,192.168.122.12:12000=3,192.168.122.13:13000=4 \
    --logger-addr 192.168.122.14:14000 \
    --numnodes 4 \
    --use-mutex 1 
