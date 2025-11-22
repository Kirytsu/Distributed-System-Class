#!/bin/bash
# Testing using kvclient.py
# Racing condition while not using mutex 

# Single PUT to node 1
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000 \
    cmd --node 1  "PUT color yellow"

python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000 \
    cmd --node 3  "PUT color green"

# GET from node 2
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000 \
    cmd --node 2   "GET color"

# Race two writers: PUT color blue, red
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000 \
    race  "PUT color blue" "PUT color red"

# Race two writers: PUT warna hitam, putih
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000 \
    race "PUT warna hitam" "PUT warna putih"

echo "-------HASIL-------"
# Read the key (color and warna) from ALL nodes after the race
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000  \
    getall color

python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000  \
    getall warna