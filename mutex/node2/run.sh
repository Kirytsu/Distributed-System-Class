#!/bin/bash

python3 ./kv.py --id 2 --tcp 8002 --udp 8102 --peers 127.0.0.1:8001=1,127.0.0.1:8003=3 --logger-addr 127.0.0.1:9000 --numnodes 3 --use-mutex 1
