#!/bin/bash
#

# Single PUT to node 1
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000 \
    cmd --node 1  "PUT color red"

python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000 \
    cmd --node 2  "PUT color blue"

# GET from node 2
python3 ../program/kvclient.py  --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000 \
    cmd --node 2   "GET color"
python3 ../program/kvclient.py  --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000 \
    cmd --node 0   "GET color"