#!/bin/bash
#

# Single PUT to node 1, 2, 3, 4
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
    cmd --node 1  "PUT color black"

python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
    cmd --node 2  "PUT color magenta"
    
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
    cmd --node 3  "PUT warna kuning"

python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
    cmd --node 4  "PUT warna kuning"

echo "-------HASIL-------"
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
     getall color

echo "-------HASIL-------"
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
     getall warna

# Racing condition
echo "race write to PUT color \"blue\" or \"green\""
python3 ../program/kvclient.py \
    --nodes 192.168.122.10:10000,192.168.122.11:11000,192.168.122.12:12000,192.168.122.13:13000\
    race "PUT color blue" "PUT color green" 

echo "race write to PUT warna \"oranye\" or \"hijau\""
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