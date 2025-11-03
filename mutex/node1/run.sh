#!/bin/bash

python3 ./kv.py --id 1 --tcp 8001 --udp 8101 --peers 127.0.0.1:8002=2,127.0.0.1:8003=3 --logger-addr 127.0.0.1:9000 --numnodes 3 --use-mutex 1 
