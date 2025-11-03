#!/bin/bash

python3 ./kv.py --id 3 --tcp 8003 --udp 8103 --peers 127.0.0.1:8001=1,127.0.0.1:8002=2 --logger-addr 127.0.0.1:9000 --numnodes 3 --use-mutex 1 
