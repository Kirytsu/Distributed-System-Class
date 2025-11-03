#!/bin/bash

python3 ../program/peer_node.py \
	  --name D --listen 0.0.0.0 13000 \
	  --peers A@192.168.122.10:10000 B@192.168.122.11:11000 C@192.168.122.12:12000 D@192.168.122.13:13000 \
	  --logger 192.168.122.14 14000 \
	  --offset-ms -600