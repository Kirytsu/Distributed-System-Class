#!/bin/bash
#

# Single PUT to node 1
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
    cmd --node 1  "PUT color black"

python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
    cmd --node 2  "PUT color magenta"
    
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
    cmd --node 2  "PUT warna kuning"

python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
    cmd --node 2  "PUT warna kuning"

python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
    race "PUT color blue" "PUT color green" 

python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
    race "PUT warna oranye" "PUT warna hijau" 


echo "-------HASIL-------"
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
     getall color

echo "-------HASIL-------"
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
     getall warna